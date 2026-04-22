import Foundation
import Observation

enum LessonPhase: Equatable {
    case intro
    case playing
    case feedback(correct: Bool)
    case complete(accuracy: Int, stars: Int)
}

enum LengthResult: Equatable {
    case notChecked
    case good
    case tooShort
    case tooLong
}

@Observable
@MainActor
final class LessonEngine {
    let lesson: Lesson
    private(set) var phase: LessonPhase = .intro
    private(set) var cursor: Int = 0
    private(set) var correctCount: Int = 0
    private(set) var attemptCount: Int = 0

    let commands: AsyncStream<SheetCommand>
    private let commandContinuation: AsyncStream<SheetCommand>.Continuation

    private let expectedMidi: [Set<UInt8>]
    private let expectedFingers: [Int?]
    private let beatsBeforeNote: [Double]
    private let totalBeats: Double
    private let noteBeats: [Double]
    private var collected: Set<UInt8> = []
    private var heldKeys: Set<UInt8> = []
    private var pressStart: DispatchTime?
    private var awaitingRelease: Bool = false
    private var windowTask: Task<Void, Never>?
    private var transitionTask: Task<Void, Never>?
    private var lengthCheckActive = false
    private(set) var lastLength: LengthResult = .notChecked

    private static let chordWindowNanos: UInt64 = 150_000_000
    private static let correctDwellNanos: UInt64 = 350_000_000
    private static let wrongDwellNanos: UInt64 = 500_000_000
    private static let lengthTolerancePct: Double = 0.4
    private static let minLengthToleranceSeconds: Double = 0.25

    init(lesson: Lesson) {
        self.lesson = lesson
        self.expectedMidi = lesson.expectedEvents.map { Set($0.map(NoteUtils.midi(from:))) }
        self.expectedFingers = lesson.expectedFingers
        let (beatsBefore, total) = Self.computeBeatMap(measures: lesson.measures)
        self.beatsBeforeNote = beatsBefore
        self.totalBeats = total
        self.noteBeats = Self.computeNoteBeats(measures: lesson.measures)
        var continuation: AsyncStream<SheetCommand>.Continuation!
        self.commands = AsyncStream { continuation = $0 }
        self.commandContinuation = continuation
    }

    var totalSteps: Int { expectedMidi.count }
    var accuracy: Int { Scoring.accuracy(correct: correctCount, total: attemptCount) }
    var progressFraction: Double {
        guard totalBeats > 0, !beatsBeforeNote.isEmpty else { return 0 }
        let clamped = min(max(cursor, 0), beatsBeforeNote.count - 1)
        return beatsBeforeNote[clamped] / totalBeats
    }

    private static func beatValue(_ d: Duration) -> Double {
        switch d {
        case .whole: return 4
        case .half: return 2
        case .quarter: return 1
        case .eighth: return 0.5
        }
    }

    private static func computeBeatMap(measures: [Measure]) -> (beatsBefore: [Double], total: Double) {
        var beatsBefore: [Double] = []
        var running: Double = 0
        for measure in measures {
            for element in measure.notes {
                switch element {
                case .rest(let duration):
                    running += beatValue(duration)
                case .note(_, let duration, _):
                    beatsBefore.append(running)
                    running += beatValue(duration)
                }
            }
        }
        beatsBefore.append(running)
        return (beatsBefore, running)
    }

    private static func computeNoteBeats(measures: [Measure]) -> [Double] {
        var result: [Double] = []
        for measure in measures {
            for element in measure.notes {
                if case .note(_, let duration, _) = element {
                    result.append(beatValue(duration))
                }
            }
        }
        return result
    }

    var currentExpectedPitches: [Pitch] {
        cursor < lesson.expectedEvents.count
            ? Array(lesson.expectedEvents[cursor]).sorted { NoteUtils.midi(from: $0) < NoteUtils.midi(from: $1) }
            : []
    }

    var currentExpectedMidis: Set<UInt8> {
        guard case .playing = phase, cursor < expectedMidi.count else { return [] }
        return expectedMidi[cursor]
    }

    var currentExpectedFingerByMidi: [UInt8: Int] {
        guard case .playing = phase,
              cursor < expectedMidi.count,
              cursor < expectedFingers.count,
              let finger = expectedFingers[cursor]
        else { return [:] }
        return Dictionary(uniqueKeysWithValues: expectedMidi[cursor].map { ($0, finger) })
    }

    func start() {
        guard phase == .intro else { return }
        cursor = 0
        correctCount = 0
        attemptCount = 0
        collected.removeAll()
        heldKeys.removeAll()
        pressStart = nil
        awaitingRelease = false
        lastLength = .notChecked
        lengthCheckActive = AppSettings.shared.enforceNoteLength
        commandContinuation.yield(.renderMeasures(lesson.measures))
        NoteInputBus.shared.onNoteOn = { [weak self] midi in
            self?.handleNoteOn(midi)
        }
        NoteInputBus.shared.onNoteOff = { [weak self] midi in
            self?.handleNoteOff(midi)
        }
        phase = .playing
        highlightCurrent(.expected)
    }

    func stop() {
        windowTask?.cancel()
        transitionTask?.cancel()
        if NoteInputBus.shared.onNoteOn != nil {
            NoteInputBus.shared.onNoteOn = nil
        }
        if NoteInputBus.shared.onNoteOff != nil {
            NoteInputBus.shared.onNoteOff = nil
        }
    }

    deinit {
        commandContinuation.finish()
    }

    private func handleNoteOn(_ midi: UInt8) {
        switch phase {
        case .playing:
            if awaitingRelease { return }
        case .feedback:
            transitionTask?.cancel()
            resetPressState()
            phase = .playing
            highlightCurrent(.expected)
        case .intro, .complete:
            return
        }

        if collected.isEmpty {
            pressStart = DispatchTime.now()
        }
        collected.insert(midi)
        heldKeys.insert(midi)
        windowTask?.cancel()
        windowTask = Task { [weak self] in
            try? await Task.sleep(nanoseconds: LessonEngine.chordWindowNanos)
            guard !Task.isCancelled else { return }
            self?.evaluateWindow()
        }
    }

    private func handleNoteOff(_ midi: UInt8) {
        heldKeys.remove(midi)
        if awaitingRelease && heldKeys.isEmpty {
            evaluateLength()
        }
    }

    private func evaluateWindow() {
        guard case .playing = phase, cursor < expectedMidi.count else { return }
        let expected = expectedMidi[cursor]
        let attempt = collected
        collected.removeAll()
        attemptCount += 1

        let pitchMatch = (attempt == expected)

        guard pitchMatch else {
            lastLength = .notChecked
            highlightCurrent(.wrong)
            phase = .feedback(correct: false)
            transitionTask = Task { [weak self] in
                try? await Task.sleep(nanoseconds: LessonEngine.wrongDwellNanos)
                guard !Task.isCancelled else { return }
                self?.resumeAfterMiss()
            }
            return
        }

        if lengthCheckActive {
            highlightCurrent(.correct)
            awaitingRelease = true
            if heldKeys.isEmpty {
                evaluateLength()
            }
        } else {
            correctCount += 1
            lastLength = .notChecked
            highlightCurrent(.correct)
            phase = .feedback(correct: true)
            transitionTask = Task { [weak self] in
                try? await Task.sleep(nanoseconds: LessonEngine.correctDwellNanos)
                guard !Task.isCancelled else { return }
                self?.advance()
            }
        }
    }

    private func evaluateLength() {
        guard awaitingRelease, let start = pressStart else { return }
        awaitingRelease = false
        let releaseNanos = DispatchTime.now().uptimeNanoseconds
        let startNanos = start.uptimeNanoseconds
        let heldSeconds = Double(releaseNanos &- startNanos) / 1_000_000_000
        pressStart = nil

        let secondsPerBeat = 60.0 / Double(lesson.effectiveTempoBPM)
        let beats = cursor < noteBeats.count ? noteBeats[cursor] : 1.0
        let expectedSeconds = beats * secondsPerBeat
        let tolerance = max(expectedSeconds * Self.lengthTolerancePct, Self.minLengthToleranceSeconds)

        if heldSeconds < expectedSeconds - tolerance {
            lastLength = .tooShort
            failLength()
        } else if heldSeconds > expectedSeconds + tolerance {
            lastLength = .tooLong
            failLength()
        } else {
            correctCount += 1
            lastLength = .good
            phase = .feedback(correct: true)
            transitionTask = Task { [weak self] in
                try? await Task.sleep(nanoseconds: LessonEngine.correctDwellNanos)
                guard !Task.isCancelled else { return }
                self?.advance()
            }
        }
    }

    private func failLength() {
        highlightCurrent(.wrong)
        phase = .feedback(correct: false)
        transitionTask = Task { [weak self] in
            try? await Task.sleep(nanoseconds: LessonEngine.wrongDwellNanos)
            guard !Task.isCancelled else { return }
            self?.resumeAfterMiss()
        }
    }

    private func advance() {
        cursor += 1
        resetPressState()
        if cursor >= totalSteps {
            commandContinuation.yield(.clearHighlights)
            let acc = accuracy
            phase = .complete(accuracy: acc, stars: Scoring.stars(accuracy: acc))
            stop()
        } else {
            phase = .playing
            highlightCurrent(.expected)
        }
    }

    private func resumeAfterMiss() {
        guard case .feedback(correct: false) = phase else { return }
        resetPressState()
        phase = .playing
        highlightCurrent(.expected)
    }

    private func resetPressState() {
        collected.removeAll()
        heldKeys.removeAll()
        pressStart = nil
        awaitingRelease = false
    }

    private func highlightCurrent(_ state: HighlightState) {
        guard cursor < lesson.expectedEvents.count else { return }
        commandContinuation.yield(.clearHighlights)
        for pitch in lesson.expectedEvents[cursor] {
            commandContinuation.yield(.highlightNote(pitch: pitch, state: state))
        }
    }
}

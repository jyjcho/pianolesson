import Foundation
import Observation

enum LessonPhase: Equatable {
    case intro
    case playing
    case feedback(correct: Bool)
    case complete(accuracy: Int, stars: Int)
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
    private var collected: Set<UInt8> = []
    private var windowTask: Task<Void, Never>?
    private var transitionTask: Task<Void, Never>?

    private static let chordWindowNanos: UInt64 = 150_000_000
    private static let correctDwellNanos: UInt64 = 350_000_000
    private static let wrongDwellNanos: UInt64 = 500_000_000

    init(lesson: Lesson) {
        self.lesson = lesson
        self.expectedMidi = lesson.expectedEvents.map { Set($0.map(NoteUtils.midi(from:))) }
        self.expectedFingers = lesson.expectedFingers
        var continuation: AsyncStream<SheetCommand>.Continuation!
        self.commands = AsyncStream { continuation = $0 }
        self.commandContinuation = continuation
    }

    var totalSteps: Int { expectedMidi.count }
    var accuracy: Int { Scoring.accuracy(correct: correctCount, total: attemptCount) }
    var progressFraction: Double {
        totalSteps == 0 ? 0 : Double(min(cursor, totalSteps)) / Double(totalSteps)
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
        phase = .playing
        commandContinuation.yield(.renderMeasures(lesson.measures))
        highlightCurrent(.expected)
        NoteInputBus.shared.onNoteOn = { [weak self] midi in
            self?.handleNoteOn(midi)
        }
    }

    func stop() {
        windowTask?.cancel()
        transitionTask?.cancel()
        if NoteInputBus.shared.onNoteOn != nil {
            NoteInputBus.shared.onNoteOn = nil
        }
    }

    deinit {
        commandContinuation.finish()
    }

    private func handleNoteOn(_ midi: UInt8) {
        switch phase {
        case .playing:
            break
        case .feedback:
            transitionTask?.cancel()
            phase = .playing
            collected.removeAll()
            highlightCurrent(.expected)
        case .intro, .complete:
            return
        }

        collected.insert(midi)
        windowTask?.cancel()
        windowTask = Task { [weak self] in
            try? await Task.sleep(nanoseconds: LessonEngine.chordWindowNanos)
            guard !Task.isCancelled else { return }
            self?.evaluateWindow()
        }
    }

    private func evaluateWindow() {
        guard case .playing = phase, cursor < expectedMidi.count else { return }
        let expected = expectedMidi[cursor]
        let attempt = collected
        collected.removeAll()
        attemptCount += 1

        if attempt == expected {
            correctCount += 1
            highlightCurrent(.correct)
            phase = .feedback(correct: true)
            transitionTask = Task { [weak self] in
                try? await Task.sleep(nanoseconds: LessonEngine.correctDwellNanos)
                guard !Task.isCancelled else { return }
                self?.advance()
            }
        } else {
            highlightCurrent(.wrong)
            phase = .feedback(correct: false)
            transitionTask = Task { [weak self] in
                try? await Task.sleep(nanoseconds: LessonEngine.wrongDwellNanos)
                guard !Task.isCancelled else { return }
                self?.resumeAfterMiss()
            }
        }
    }

    private func advance() {
        cursor += 1
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
        phase = .playing
        highlightCurrent(.expected)
    }

    private func highlightCurrent(_ state: HighlightState) {
        guard cursor < lesson.expectedEvents.count else { return }
        commandContinuation.yield(.clearHighlights)
        for pitch in lesson.expectedEvents[cursor] {
            commandContinuation.yield(.highlightNote(pitch: pitch, state: state))
        }
    }
}

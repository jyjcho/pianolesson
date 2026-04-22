import SwiftUI

struct LessonPlayScreen: View {
    let lesson: Lesson
    @Environment(\.dismiss) private var dismiss
    @State private var engine: LessonEngine
    @State private var sheetError: String?
    @State private var earnedBadges: [BadgeId] = []
    @State private var settings = AppSettings.shared
    @State private var bus = NoteInputBus.shared

    init(lesson: Lesson) {
        self.lesson = lesson
        _engine = State(initialValue: LessonEngine(lesson: lesson))
    }

    var body: some View {
        Group {
            switch engine.phase {
            case .intro:
                introView
            case .playing, .feedback:
                playingView
            case let .complete(accuracy, stars):
                ScoreCard(
                    lesson: lesson,
                    accuracy: accuracy,
                    stars: stars,
                    newBadges: earnedBadges,
                    onRetry: restart,
                    onExit: { dismiss() }
                )
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemGroupedBackground))
        .navigationTitle(lesson.title)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                MidiStatusBadge()
            }
        }
        .onChange(of: engine.phase) { _, new in
            if case let .complete(accuracy, _) = new {
                ProgressStore.shared.record(lessonId: lesson.id, accuracy: accuracy)
                earnedBadges = ProgressStore.shared.consumeNewlyEarnedBadges()
            }
        }
        .onDisappear { engine.stop() }
    }

    private var introView: some View {
        VStack(spacing: 28) {
            Spacer()
            Image(systemName: iconName(for: lesson.category))
                .font(.system(size: 72))
                .foregroundStyle(.blue)
            VStack(spacing: 8) {
                Text(lesson.title).font(.largeTitle.bold())
                Text(lesson.category.displayName)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            Text(lesson.summary)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)
            Text("\(engine.totalSteps) notes")
                .font(.caption)
                .foregroundStyle(.secondary)
            Spacer()
            Button {
                engine.start()
            } label: {
                Text("Start")
                    .font(.title3.bold())
                    .frame(maxWidth: 260)
                    .padding(.vertical, 14)
            }
            .buttonStyle(.borderedProminent)
            Spacer()
        }
    }

    private var playingView: some View {
        VStack(spacing: 0) {
            ProgressView(value: engine.progressFraction)
                .padding(.horizontal)
                .padding(.top, 8)

            ZStack {
                SheetMusicView(
                    measures: lesson.measures,
                    onError: { sheetError = $0 },
                    commands: engine.commands
                )
                .frame(height: 220)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 4).stroke(Color(white: 0.85))
                )
                .padding(.horizontal)
                .padding(.top, 8)

                FeedbackOverlay(phase: engine.phase)
                    .padding(.horizontal, 48)
                    .padding(.top, 24)
            }

            if let sheetError {
                Text(sheetError)
                    .font(.caption)
                    .foregroundStyle(.red)
                    .lineLimit(2)
                    .padding(.horizontal)
            }

            HStack {
                Text("\(min(engine.cursor + 1, engine.totalSteps)) / \(engine.totalSteps)")
                    .font(.caption.monospacedDigit())
                if let lengthLabel {
                    Text(lengthLabel)
                        .font(.caption.bold())
                        .foregroundStyle(.orange)
                }
                Spacer()
                Text("Accuracy \(engine.accuracy)%")
                    .font(.caption.monospacedDigit())
            }
            .foregroundStyle(.secondary)
            .padding(.horizontal)
            .padding(.vertical, 6)

            Spacer(minLength: 0)

            PianoKeyboard(
                lowestMidi: keyboardRange.low,
                highestMidi: keyboardRange.high,
                showLabels: settings.showNoteLabels,
                highlightedMidis: bus.activeNotes,
                expectedMidis: engine.currentExpectedMidis,
                fingerByMidi: engine.currentExpectedFingerByMidi,
                onNoteOn: { midi in bus.noteOn(midi, source: .touch) },
                onNoteOff: { midi in bus.noteOff(midi, source: .touch) }
            )
            .frame(maxWidth: .infinity)
            .frame(height: 240)
        }
    }

    private var lengthLabel: String? {
        guard case .feedback(correct: false) = engine.phase else { return nil }
        switch engine.lastLength {
        case .tooShort: return "Hold longer"
        case .tooLong: return "Too long"
        case .good, .notChecked: return nil
        }
    }

    private var keyboardRange: (low: UInt8, high: UInt8) {
        let midis = lesson.expectedEvents.flatMap { $0 }.map { NoteUtils.midi(from: $0) }
        let minUsed = midis.min().map(Int.init) ?? 60
        let maxUsed = midis.max().map(Int.init) ?? 72
        let low = UInt8(max(24, min(48, minUsed - 2)))
        let high = UInt8(min(96, max(84, maxUsed + 2)))
        return (low, high)
    }

    private func restart() {
        engine.stop()
        engine = LessonEngine(lesson: lesson)
        earnedBadges = []
    }

    private func iconName(for category: LessonCategory) -> String {
        switch category {
        case .noteId: return "music.note"
        case .scalesChords: return "music.note.list"
        case .famousSongs: return "music.quarternote.3"
        case .rhythm: return "metronome"
        }
    }
}

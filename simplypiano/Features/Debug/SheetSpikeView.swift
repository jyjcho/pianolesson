import SwiftUI

@MainActor
private final class SheetSpikeCommandBus {
    let stream: AsyncStream<SheetCommand>
    private let continuation: AsyncStream<SheetCommand>.Continuation

    init() {
        var captured: AsyncStream<SheetCommand>.Continuation!
        self.stream = AsyncStream { captured = $0 }
        self.continuation = captured
    }

    func send(_ command: SheetCommand) { continuation.yield(command) }
}

struct SheetSpikeView: View {
    @State private var isReady = false
    @State private var lastError: String?
    @State private var highlightedIndex: Int = 0
    @State private var bus = SheetSpikeCommandBus()

    private let measures: [Measure] = Self.demoMeasures()
    private let highlightTargets: [Pitch] = [
        Pitch(.C, 4), Pitch(.D, 4), Pitch(.E, 4), Pitch(.F, 4),
        Pitch(.G, 4), Pitch(.A, 4), Pitch(.B, 4), Pitch(.C, 5),
    ]

    var body: some View {
        VStack(spacing: 12) {
            SheetMusicView(
                measures: measures,
                onReady: { isReady = true },
                onError: { lastError = $0 },
                commands: bus.stream
            )
            .frame(height: 240)
            .background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 4).stroke(Color(white: 0.85))
            )
            .padding(.horizontal)

            statusRow

            controls

            Spacer()
        }
        .padding(.top)
        .navigationTitle("Sheet Music Spike")
        .navigationBarTitleDisplayMode(.inline)
    }

    private var statusRow: some View {
        HStack {
            Circle()
                .fill(isReady ? Color.green : Color.orange)
                .frame(width: 8, height: 8)
            Text(isReady ? "VexFlow ready" : "Loading…")
                .font(.caption)
                .foregroundStyle(.secondary)
            Spacer()
            if let err = lastError {
                Text(err)
                    .font(.caption)
                    .foregroundStyle(.red)
                    .lineLimit(2)
            }
        }
        .padding(.horizontal)
    }

    private var controls: some View {
        HStack {
            Button("Highlight next") { highlightNext() }
                .buttonStyle(.bordered)
                .disabled(!isReady)

            Button("Mark correct") {
                sendHighlight(state: .correct)
            }
            .buttonStyle(.bordered)
            .disabled(!isReady)

            Button("Mark wrong") {
                sendHighlight(state: .wrong)
            }
            .buttonStyle(.bordered)
            .disabled(!isReady)

            Button("Clear") {
                bus.send(.clearHighlights)
            }
            .buttonStyle(.bordered)
            .disabled(!isReady)
        }
        .padding(.horizontal)
    }

    private func highlightNext() {
        let current = highlightTargets[highlightedIndex % highlightTargets.count]
        bus.send(.highlightNote(pitch: current, state: .expected))
        highlightedIndex = (highlightedIndex + 1) % highlightTargets.count
    }

    private func sendHighlight(state: HighlightState) {
        let idx = (highlightedIndex - 1 + highlightTargets.count) % highlightTargets.count
        let pitch = highlightTargets[idx]
        bus.send(.highlightNote(pitch: pitch, state: state))
    }

    private static func demoMeasures() -> [Measure] {
        let q: Duration = .quarter
        let measure1 = Measure(notes: [
            .note(pitches: [Pitch(.C, 4)], duration: q, finger: nil),
            .note(pitches: [Pitch(.D, 4)], duration: q, finger: nil),
            .note(pitches: [Pitch(.E, 4)], duration: q, finger: nil),
            .note(pitches: [Pitch(.F, 4)], duration: q, finger: nil),
        ])
        let measure2 = Measure(notes: [
            .note(pitches: [Pitch(.G, 4)], duration: q, finger: nil),
            .note(pitches: [Pitch(.A, 4)], duration: q, finger: nil),
            .note(pitches: [Pitch(.B, 4)], duration: q, finger: nil),
            .note(pitches: [Pitch(.C, 5)], duration: q, finger: nil),
        ])
        let measure3 = Measure(notes: [
            .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .half, finger: nil),
            .note(pitches: [Pitch(.F, 4), Pitch(.A, 4), Pitch(.C, 5)], duration: .half, finger: nil),
        ])
        let measure4 = Measure(notes: [
            .note(pitches: [Pitch(.G, 4)], duration: q, finger: nil),
            .rest(duration: q),
            .note(pitches: [Pitch(.F, 4, accidental: .sharp)], duration: q, finger: nil),
            .note(pitches: [Pitch(.C, 4)], duration: q, finger: nil),
        ])
        return [measure1, measure2, measure3, measure4]
    }
}

#Preview {
    NavigationStack { SheetSpikeView() }
}

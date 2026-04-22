import Foundation
import Observation

@Observable
@MainActor
final class FreePlayStaff {
    private let notesPerMeasure = 4
    private let measureCount = 4

    private(set) var measures: [Measure]
    private var notes: [MusicNote] = []

    init() {
        self.measures = (0..<4).map { _ in Measure(notes: []) }
    }

    var isFull: Bool { notes.count >= notesPerMeasure * measureCount }

    func append(midi: UInt8) {
        guard !isFull else { return }
        let pitch = NoteUtils.pitch(fromMidi: midi)
        notes.append(.note(pitches: [pitch], duration: .quarter, finger: nil))
        rebuildMeasures()
    }

    func clear() {
        notes.removeAll()
        rebuildMeasures()
    }

    private func rebuildMeasures() {
        var result: [Measure] = []
        for i in 0..<measureCount {
            let start = i * notesPerMeasure
            let end = min(start + notesPerMeasure, notes.count)
            let slice = start < notes.count ? Array(notes[start..<end]) : []
            result.append(Measure(notes: slice))
        }
        measures = result
    }
}

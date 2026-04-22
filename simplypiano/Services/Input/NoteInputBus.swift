import Foundation
import Observation

enum NoteSource {
    case midi
    case touch
}

@Observable
@MainActor
final class NoteInputBus {
    static let shared = NoteInputBus()

    private(set) var activeNotes: Set<UInt8> = []
    var onNoteOn: ((UInt8) -> Void)?
    let midi: MidiManager

    var isMidiConnected: Bool { !midi.sourceNames.isEmpty }
    var connectedDeviceName: String? { midi.sourceNames.first }

    private init() {
        midi = MidiManager()
        midi.onEvent = { [weak self] event in
            guard let self else { return }
            if event.isNoteOn {
                self.noteOn(event.note, velocity: event.velocity, source: .midi)
            } else if event.isNoteOff {
                self.noteOff(event.note, source: .midi)
            }
        }
    }

    func noteOn(_ midi: UInt8, velocity: UInt8 = 100, source: NoteSource) {
        let isNew = activeNotes.insert(midi).inserted
        AudioEngine.shared.noteOn(midi, velocity: velocity)
        if isNew { onNoteOn?(midi) }
    }

    func noteOff(_ midi: UInt8, source: NoteSource) {
        activeNotes.remove(midi)
        AudioEngine.shared.noteOff(midi)
    }
}

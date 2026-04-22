import Foundation

enum NoteUtils {
    static func midi(from pitch: Pitch) -> UInt8 {
        let base: Int
        switch pitch.note {
        case .C: base = 0
        case .D: base = 2
        case .E: base = 4
        case .F: base = 5
        case .G: base = 7
        case .A: base = 9
        case .B: base = 11
        }
        let shift: Int
        switch pitch.accidental {
        case .sharp: shift = 1
        case .flat: shift = -1
        case .natural, .none: shift = 0
        }
        return UInt8((pitch.octave + 1) * 12 + base + shift)
    }

    static func pitch(fromMidi midi: UInt8) -> Pitch {
        let octave = Int(midi) / 12 - 1
        switch Int(midi) % 12 {
        case 0: return Pitch(.C, octave)
        case 1: return Pitch(.C, octave, accidental: .sharp)
        case 2: return Pitch(.D, octave)
        case 3: return Pitch(.D, octave, accidental: .sharp)
        case 4: return Pitch(.E, octave)
        case 5: return Pitch(.F, octave)
        case 6: return Pitch(.F, octave, accidental: .sharp)
        case 7: return Pitch(.G, octave)
        case 8: return Pitch(.G, octave, accidental: .sharp)
        case 9: return Pitch(.A, octave)
        case 10: return Pitch(.A, octave, accidental: .sharp)
        case 11: return Pitch(.B, octave)
        default: return Pitch(.C, octave)
        }
    }
}

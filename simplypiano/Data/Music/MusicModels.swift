import Foundation

enum NoteName: String, Codable, CaseIterable {
    case C, D, E, F, G, A, B
}

enum Accidental: String, Codable {
    case sharp, flat, natural
}

enum Duration: String, Codable {
    case whole, half, quarter, eighth
}

struct Pitch: Codable, Hashable {
    let note: NoteName
    let octave: Int
    var accidental: Accidental?

    init(_ note: NoteName, _ octave: Int, accidental: Accidental? = nil) {
        self.note = note
        self.octave = octave
        self.accidental = accidental
    }
}

struct TimeSignature: Codable, Equatable {
    let numerator: Int
    let denominator: Int

    static let fourFour = TimeSignature(numerator: 4, denominator: 4)
}

enum MusicNote: Codable, Equatable {
    case note(pitches: [Pitch], duration: Duration, finger: Int?)
    case rest(duration: Duration)

    private enum Kind: String, Codable { case note, rest }
    private enum CodingKeys: String, CodingKey { case kind, pitches, duration, finger }

    func encode(to encoder: Encoder) throws {
        var c = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case let .note(pitches, duration, finger):
            try c.encode(Kind.note, forKey: .kind)
            try c.encode(pitches, forKey: .pitches)
            try c.encode(duration, forKey: .duration)
            try c.encodeIfPresent(finger, forKey: .finger)
        case let .rest(duration):
            try c.encode(Kind.rest, forKey: .kind)
            try c.encode(duration, forKey: .duration)
        }
    }

    init(from decoder: Decoder) throws {
        let c = try decoder.container(keyedBy: CodingKeys.self)
        let kind = try c.decode(Kind.self, forKey: .kind)
        let duration = try c.decode(Duration.self, forKey: .duration)
        switch kind {
        case .note:
            let pitches = try c.decode([Pitch].self, forKey: .pitches)
            let finger = try c.decodeIfPresent(Int.self, forKey: .finger)
            self = .note(pitches: pitches, duration: duration, finger: finger)
        case .rest:
            self = .rest(duration: duration)
        }
    }
}

struct Measure: Codable {
    let notes: [MusicNote]
    let timeSignature: TimeSignature

    init(notes: [MusicNote], timeSignature: TimeSignature = .fourFour) {
        self.notes = notes
        self.timeSignature = timeSignature
    }
}

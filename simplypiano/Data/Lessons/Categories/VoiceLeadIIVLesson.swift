import Foundation

enum VoiceLeadIIVLesson {
    static let lesson = Lesson(
        id: "voice-lead-i-iv",
        title: "Voice Leading: I to IV",
        category: .scalesChords,
        summary: "C root position → F in 2nd inversion. C stays put, E moves to F, G moves to A.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.F, 4), Pitch(.A, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.F, 4), Pitch(.A, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

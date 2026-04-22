import Foundation

enum HandsTogetherChordProgressionLesson {
    static let lesson = Lesson(
        id: "hands-together-chord-progression",
        title: "Hands Together: I-IV-V-I",
        category: .scalesChords,
        summary: "LH plays the bass root, RH plays the full chord. C → F → G → C.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 2), Pitch(.F, 4), Pitch(.A, 4), Pitch(.C, 5)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 2), Pitch(.G, 4), Pitch(.B, 4), Pitch(.D, 5)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

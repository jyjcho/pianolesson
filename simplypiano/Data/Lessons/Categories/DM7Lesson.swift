import Foundation

enum DM7Lesson {
    static let lesson = Lesson(
        id: "dm7",
        title: "Dm7 Minor Seventh",
        category: .scalesChords,
        summary: "D F A C — the ii7 in C major. A crucial step in the ii-V-I cadence.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.D, 3), Pitch(.F, 3), Pitch(.A, 3), Pitch(.C, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 3)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.F, 3)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.A, 3)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 3), Pitch(.F, 3), Pitch(.A, 3), Pitch(.C, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3), Pitch(.B, 3), Pitch(.D, 4), Pitch(.F, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

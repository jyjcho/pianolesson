import Foundation

enum SecondaryDominantsLesson {
    static let lesson = Lesson(
        id: "secondary-dominants",
        title: "Secondary Dominants",
        category: .scalesChords,
        summary: "C → A7 → Dm → G7 → C. A7 is the 'V of ii' — borrowing tension to pull into Dm.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 2), Pitch(.A, 3), Pitch(.C, 4, accidental: .sharp), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 3), Pitch(.D, 4), Pitch(.F, 4), Pitch(.A, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 2), Pitch(.G, 3), Pitch(.B, 3), Pitch(.D, 4), Pitch(.F, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

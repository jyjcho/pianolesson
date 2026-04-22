import Foundation

enum Dim7IntroLesson {
    static let lesson = Lesson(
        id: "dim7-intro",
        title: "Diminished 7: B° and Bdim7",
        category: .scalesChords,
        summary: "B D F — the vii° in C. Tense, unresolved. Add A♭ for full diminished 7.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.B, 3), Pitch(.D, 4), Pitch(.F, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 3), Pitch(.D, 4), Pitch(.F, 4), Pitch(.A, 4, accidental: .flat)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 3)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.A, 4, accidental: .flat)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

import Foundation

enum CircleOfFifthsDrillLesson {
    static let lesson = Lesson(
        id: "circle-of-fifths-drill",
        title: "Circle of Fifths Drill",
        category: .scalesChords,
        summary: "Four triads moving down by fifths — C, F, B♭, E♭. Hear the tonal pull.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 3), Pitch(.A, 3), Pitch(.C, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 3, accidental: .flat), Pitch(.D, 4), Pitch(.F, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 3, accidental: .flat), Pitch(.G, 3), Pitch(.B, 3, accidental: .flat)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

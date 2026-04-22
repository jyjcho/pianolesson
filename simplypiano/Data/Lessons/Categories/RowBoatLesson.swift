import Foundation

enum RowBoatLesson {
    static let lesson = Lesson(
        id: "row-row-your-boat",
        title: "Row, Row, Row Your Boat",
        category: .famousSongs,
        summary: "A stepwise climb up C major — right hand, C position.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .whole, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .whole, finger: 5),
            ]),
        ]
    )
}

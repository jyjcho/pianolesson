import Foundation

enum MaryLambLesson {
    static let lesson = Lesson(
        id: "mary-had-a-little-lamb",
        title: "Mary Had a Little Lamb",
        category: .famousSongs,
        summary: "Simple stepwise melody.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 4)], duration: .half, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 4)], duration: .half, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 4)], duration: .half, finger: nil),
            ]),
        ]
    )
}

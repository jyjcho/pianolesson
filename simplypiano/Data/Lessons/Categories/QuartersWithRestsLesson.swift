import Foundation

enum QuartersWithRestsLesson {
    static let lesson = Lesson(
        id: "quarters-with-rests",
        title: "Quarter Notes with Rests",
        category: .rhythm,
        summary: "Silence has a beat too. Rest for one count, play for one count.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .rest(duration: .quarter),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
                .rest(duration: .quarter),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .rest(duration: .quarter),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .rest(duration: .quarter),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
                .rest(duration: .quarter),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .whole, finger: 1),
            ]),
        ]
    )
}

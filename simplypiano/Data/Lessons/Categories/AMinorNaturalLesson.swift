import Foundation

enum AMinorNaturalLesson {
    static let lesson = Lesson(
        id: "a-minor-natural",
        title: "A Natural Minor",
        category: .scalesChords,
        summary: "A B C D E F G A — the relative minor of C. All white keys, darker mood.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.A, 3)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.B, 3)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.B, 3)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.A, 3)], duration: .quarter, finger: 1),
            ]),
        ]
    )
}

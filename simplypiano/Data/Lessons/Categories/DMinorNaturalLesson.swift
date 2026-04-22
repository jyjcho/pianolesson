import Foundation

enum DMinorNaturalLesson {
    static let lesson = Lesson(
        id: "d-minor-natural",
        title: "D Natural Minor",
        category: .scalesChords,
        summary: "D E F G A B♭ C D — one flat. Relative minor of F major.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.B, 4, accidental: .flat)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.B, 4, accidental: .flat)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 1),
            ]),
        ]
    )
}

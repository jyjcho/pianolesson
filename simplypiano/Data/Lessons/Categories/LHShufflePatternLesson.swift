import Foundation

enum LHShufflePatternLesson {
    static let lesson = Lesson(
        id: "lh-shuffle-pattern",
        title: "LH: Shuffle Pattern",
        category: .scalesChords,
        summary: "Blues shuffle: root and 5th alternating over C, F, G. Swing the eighths — long-short feel.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.G, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.C, 3)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.G, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.C, 3)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.A, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.C, 3)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.A, 3)], duration: .eighth, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 2)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.C, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.F, 2)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.C, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.F, 2)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.D, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.F, 2)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.D, 3)], duration: .eighth, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 2)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.D, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.G, 2)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.D, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.G, 2)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.E, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.G, 2)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.E, 3)], duration: .eighth, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3)], duration: .whole, finger: 5),
            ]),
        ]
    )
}

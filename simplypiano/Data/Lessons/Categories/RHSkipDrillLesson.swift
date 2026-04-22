import Foundation

enum RHSkipDrillLesson {
    static let lesson = Lesson(
        id: "rh-skip-drill",
        title: "Skip a Key",
        category: .noteId,
        summary: "Skips jump over a neighbor. C-E-G — thumb, middle, pinky. The shape of a C chord.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: 1),
            ]),
        ]
    )
}

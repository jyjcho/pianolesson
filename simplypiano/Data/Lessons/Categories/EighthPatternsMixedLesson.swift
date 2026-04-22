import Foundation

enum EighthPatternsMixedLesson {
    static let lesson = Lesson(
        id: "eighth-patterns-mixed",
        title: "Eighth Patterns Mixed",
        category: .rhythm,
        summary: "Mix eighth pairs with quarters and halves. Count 1-and-2-and-3-and-4.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.F, 4)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .whole, finger: 1),
            ]),
        ]
    )
}

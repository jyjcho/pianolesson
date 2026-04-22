import Foundation

enum HotCrossBunsLesson {
    static let lesson = Lesson(
        id: "hot-cross-buns",
        title: "Hot Cross Buns",
        category: .famousSongs,
        summary: "Three-note melody with eighth-note variation.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
            ]),
        ]
    )
}

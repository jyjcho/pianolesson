import Foundation

enum CPositionSkipsLesson {
    static let lesson = Lesson(
        id: "c-position-skips",
        title: "C Position: Skips",
        category: .scalesChords,
        summary: "Thirds in C position — C-E and D-F and E-G. Fingers 1-3, 2-4, 3-5.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
            ]),
        ]
    )
}

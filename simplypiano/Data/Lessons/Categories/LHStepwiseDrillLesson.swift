import Foundation

enum LHStepwiseDrillLesson {
    static let lesson = Lesson(
        id: "lh-stepwise-drill",
        title: "LH: Stepwise Drill",
        category: .scalesChords,
        summary: "Left hand walks up and down C-D-E-F-G. Pinky 5 low, thumb 1 high.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.D, 3)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.E, 3)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 3)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.F, 3)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.E, 3)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 3)], duration: .quarter, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.E, 3)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 3)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.F, 3)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3)], duration: .whole, finger: 5),
            ]),
        ]
    )
}

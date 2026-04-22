import Foundation

enum ProgressionCAmFGLesson {
    static let lesson = Lesson(
        id: "progression-c-am-f-g",
        title: "I-vi-IV-V: Pop Progression",
        category: .scalesChords,
        summary: "C → A minor → F → G. Four chords behind half the pop songs ever written.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 3), Pitch(.C, 4), Pitch(.E, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 3), Pitch(.A, 3), Pitch(.C, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3), Pitch(.B, 3), Pitch(.D, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

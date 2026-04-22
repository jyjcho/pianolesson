import Foundation

enum PopViIVIVLesson {
    static let lesson = Lesson(
        id: "pop-vi-iv-i-v",
        title: "Pop Progression: vi-IV-I-V",
        category: .scalesChords,
        summary: "Am → F → C → G. The opposite of the I-vi-IV-V, and just as common.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.A, 2), Pitch(.A, 3), Pitch(.C, 4), Pitch(.E, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 2), Pitch(.F, 3), Pitch(.A, 3), Pitch(.C, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 2), Pitch(.G, 3), Pitch(.B, 3), Pitch(.D, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

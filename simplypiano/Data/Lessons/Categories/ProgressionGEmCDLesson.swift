import Foundation

enum ProgressionGEmCDLesson {
    static let lesson = Lesson(
        id: "progression-g-em-c-d",
        title: "I-vi-IV-V in G",
        category: .scalesChords,
        summary: "G → E minor → C → D. Same shape as before, new home key.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3), Pitch(.B, 3), Pitch(.D, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 3), Pitch(.G, 3), Pitch(.B, 3)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 3), Pitch(.F, 3, accidental: .sharp), Pitch(.A, 3)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

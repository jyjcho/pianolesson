import Foundation

enum ProgressionCGFCLesson {
    static let lesson = Lesson(
        id: "progression-c-g-f-c",
        title: "C-G-F-C Progression",
        category: .scalesChords,
        summary: "A pop favorite: I → V → IV → I. One chord per measure, straight to the point.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3), Pitch(.B, 3), Pitch(.D, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 3), Pitch(.A, 3), Pitch(.C, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

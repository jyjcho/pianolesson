import Foundation

enum FInversionsLesson {
    static let lesson = Lesson(
        id: "f-inversions",
        title: "F Major Inversions",
        category: .scalesChords,
        summary: "F-A-C root → A-C-F first → C-F-A second. Three shapes, same three notes.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.F, 3), Pitch(.A, 3), Pitch(.C, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 3), Pitch(.C, 4), Pitch(.F, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.F, 4), Pitch(.A, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 3), Pitch(.A, 3), Pitch(.C, 4)], duration: .half, finger: nil),
                .note(pitches: [Pitch(.A, 3), Pitch(.C, 4), Pitch(.F, 4)], duration: .half, finger: nil),
            ]),
        ]
    )
}

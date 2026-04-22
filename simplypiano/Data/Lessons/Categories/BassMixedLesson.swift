import Foundation

enum BassMixedLesson {
    static let lesson = Lesson(
        id: "bass-mixed",
        title: "Bass Clef Mixed",
        category: .noteId,
        summary: "Lines GBDFA and spaces ACEG together. Read the left-hand notes fluently.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.G, 2)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.A, 2)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.B, 2)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 3)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 3)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.F, 3)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 3)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 3)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.F, 3)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 3)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.B, 2)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 2)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

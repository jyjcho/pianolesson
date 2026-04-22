import Foundation

enum TrebleMixedLesson {
    static let lesson = Lesson(
        id: "treble-mixed",
        title: "Treble Lines & Spaces",
        category: .noteId,
        summary: "Lines EGBDF and spaces FACE mixed together. Recognize each note by its position.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 5)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

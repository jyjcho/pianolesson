import Foundation

enum AMajorScaleLesson {
    static let lesson = Lesson(
        id: "a-major-scale",
        title: "A Major Scale",
        category: .scalesChords,
        summary: "A B C♯ D E F♯ G♯ A — three sharps. Bright and singing.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.A, 3)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.B, 3)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 4, accidental: .sharp)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.F, 4, accidental: .sharp)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 4, accidental: .sharp)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.G, 4, accidental: .sharp)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.F, 4, accidental: .sharp)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 4, accidental: .sharp)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.B, 3)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.A, 3)], duration: .quarter, finger: 1),
            ]),
        ]
    )
}

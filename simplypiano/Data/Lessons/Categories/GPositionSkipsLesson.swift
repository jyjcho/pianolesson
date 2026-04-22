import Foundation

enum GPositionSkipsLesson {
    static let lesson = Lesson(
        id: "g-position-skips",
        title: "G Position: Skips",
        category: .scalesChords,
        summary: "Thirds in G position — G-B and A-C and B-D. Same shapes, new key.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.G, 4)], duration: .half, finger: 1),
            ]),
        ]
    )
}

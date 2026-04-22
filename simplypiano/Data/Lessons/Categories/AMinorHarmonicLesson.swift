import Foundation

enum AMinorHarmonicLesson {
    static let lesson = Lesson(
        id: "a-minor-harmonic",
        title: "A Harmonic Minor",
        category: .scalesChords,
        summary: "Like natural minor but with a raised 7th — G♯. A dramatic, middle-eastern sound.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.A, 3)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.B, 3)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 4, accidental: .sharp)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.G, 4, accidental: .sharp)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.B, 3)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.A, 3)], duration: .quarter, finger: 1),
            ]),
        ]
    )
}

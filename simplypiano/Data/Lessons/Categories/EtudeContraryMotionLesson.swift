import Foundation

enum EtudeContraryMotionLesson {
    static let lesson = Lesson(
        id: "etude-contrary-motion",
        title: "Etude: Contrary Motion",
        category: .famousSongs,
        summary: "Hands move in opposite directions throughout — symmetry etude in C. Start at middle C, spread out, come back.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.B, 3), Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.A, 3), Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 3), Pitch(.F, 4)], duration: .quarter, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 3), Pitch(.G, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 3), Pitch(.A, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 3), Pitch(.B, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 5)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 3), Pitch(.B, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.F, 3), Pitch(.G, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.A, 3), Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.C, 4), Pitch(.C, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3), Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4), Pitch(.C, 5)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

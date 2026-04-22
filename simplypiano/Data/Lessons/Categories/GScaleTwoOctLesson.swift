import Foundation

enum GScaleTwoOctLesson {
    static let lesson = Lesson(
        id: "g-scale-two-oct",
        title: "G Scale: Two Octaves",
        category: .scalesChords,
        summary: "G to G, two octaves. F♯ on every trip up or down.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.A, 3)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.B, 3)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.C, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.F, 4, accidental: .sharp)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.A, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.B, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.C, 5)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.D, 5)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.E, 5)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.F, 5, accidental: .sharp)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.G, 5)], duration: .eighth, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 5)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.F, 5, accidental: .sharp)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.E, 5)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.D, 5)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.C, 5)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.B, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.A, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 4, accidental: .sharp)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.C, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.B, 3)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.A, 3)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.G, 3)], duration: .quarter, finger: 1),
            ]),
        ]
    )
}

import Foundation

enum CScaleTwoOctLesson {
    static let lesson = Lesson(
        id: "c-scale-two-oct",
        title: "C Scale: Two Octaves",
        category: .scalesChords,
        summary: "C to C, two octaves. Thumb under at F, then again at C. Keep it even.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.A, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.B, 4)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.C, 5)], duration: .eighth, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 5)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.D, 5)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.E, 5)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.F, 5)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.G, 5)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.A, 5)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.B, 5)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.C, 6)], duration: .eighth, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 6)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.B, 5)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.A, 5)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.G, 5)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.F, 5)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.E, 5)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.D, 5)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.C, 5)], duration: .eighth, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 4)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.A, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.F, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
            ]),
        ]
    )
}

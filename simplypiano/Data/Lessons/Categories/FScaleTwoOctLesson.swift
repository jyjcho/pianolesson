import Foundation

enum FScaleTwoOctLesson {
    static let lesson = Lesson(
        id: "f-scale-two-oct",
        title: "F Scale: Two Octaves",
        category: .scalesChords,
        summary: "F to F, two octaves. B♭ on every trip. RH uses thumb after the 4th finger on B♭.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.F, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.G, 3)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.A, 3)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.B, 3, accidental: .flat)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.C, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .eighth, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.A, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.B, 4, accidental: .flat)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.C, 5)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.D, 5)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.E, 5)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.F, 5)], duration: .eighth, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 5)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.E, 5)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.D, 5)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.C, 5)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.B, 4, accidental: .flat)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.A, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.F, 4)], duration: .eighth, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.C, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.B, 3, accidental: .flat)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.A, 3)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.G, 3)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.F, 3)], duration: .quarter, finger: 1),
            ]),
        ]
    )
}

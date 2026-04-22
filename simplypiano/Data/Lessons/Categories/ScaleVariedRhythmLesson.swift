import Foundation

enum ScaleVariedRhythmLesson {
    static let lesson = Lesson(
        id: "scale-varied-rhythm",
        title: "Scale with Varied Rhythm",
        category: .scalesChords,
        summary: "C major scale with rhythmic variation — long-short, short-long, mixed.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.A, 4)], duration: .eighth, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 4)], duration: .half, finger: 4),
                .note(pitches: [Pitch(.C, 5)], duration: .half, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 5)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.B, 4)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.F, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 4)], duration: .half, finger: 2),
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
            ]),
        ]
    )
}

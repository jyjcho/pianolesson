import Foundation

enum RhythmWholeHalfMixLesson {
    static let lesson = Lesson(
        id: "rhythm-whole-half-mix",
        title: "Wholes and Halves",
        category: .rhythm,
        summary: "Whole = 4 beats, half = 2 beats. Count in your head as you play.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .whole, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .half, finger: 3),
                .note(pitches: [Pitch(.G, 4)], duration: .half, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .whole, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .half, finger: 3),
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
            ]),
        ]
    )
}

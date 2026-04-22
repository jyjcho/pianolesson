import Foundation

enum WaltzRhythmLesson {
    static let lesson = Lesson(
        id: "waltz-three-four",
        title: "3/4 Time — The Waltz",
        category: .rhythm,
        summary: "Three beats per measure. Feel the ONE-two-three pulse.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
            ], timeSignature: TimeSignature(numerator: 3, denominator: 4)),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
            ], timeSignature: TimeSignature(numerator: 3, denominator: 4)),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 5),
            ], timeSignature: TimeSignature(numerator: 3, denominator: 4)),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
            ], timeSignature: TimeSignature(numerator: 3, denominator: 4)),
        ]
    )
}

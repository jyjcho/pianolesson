import Foundation

enum SilentNightLesson {
    static let lesson = Lesson(
        id: "silent-night",
        title: "Silent Night",
        category: .famousSongs,
        summary: "Lullaby in 3/4 — three beats per measure. Lilt the first beat of each bar.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 1),
            ], timeSignature: TimeSignature(numerator: 3, denominator: 4)),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .half, finger: 3),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
            ], timeSignature: TimeSignature(numerator: 3, denominator: 4)),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 1),
            ], timeSignature: TimeSignature(numerator: 3, denominator: 4)),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .half, finger: 3),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
            ], timeSignature: TimeSignature(numerator: 3, denominator: 4)),
        ]
    )
}

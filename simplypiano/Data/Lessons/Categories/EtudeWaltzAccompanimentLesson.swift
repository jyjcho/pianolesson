import Foundation

enum EtudeWaltzAccompanimentLesson {
    static let lesson = Lesson(
        id: "etude-waltz-accompaniment",
        title: "Etude: Waltz in C",
        category: .famousSongs,
        summary: "3/4 waltz — LH plays bass-chord-chord, RH carries a gentle melody. Emphasize beat one; feel the lilt.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.E, 3), Pitch(.G, 3), Pitch(.G, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.E, 3), Pitch(.G, 3), Pitch(.G, 4)], duration: .quarter, finger: 5),
            ], timeSignature: TimeSignature(numerator: 3, denominator: 4)),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 5)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.E, 3), Pitch(.G, 3), Pitch(.B, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.E, 3), Pitch(.G, 3), Pitch(.G, 4)], duration: .quarter, finger: 3),
            ], timeSignature: TimeSignature(numerator: 3, denominator: 4)),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 2), Pitch(.A, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.D, 3), Pitch(.G, 3), Pitch(.B, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.D, 3), Pitch(.G, 3), Pitch(.G, 4)], duration: .quarter, finger: 3),
            ], timeSignature: TimeSignature(numerator: 3, denominator: 4)),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.E, 3), Pitch(.G, 3), Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3), Pitch(.C, 4)], duration: .quarter, finger: 1),
            ], timeSignature: TimeSignature(numerator: 3, denominator: 4)),
        ]
    )
}

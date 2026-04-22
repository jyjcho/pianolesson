import Foundation

enum ThreeFourRhythmDrillLesson {
    static let lesson = Lesson(
        id: "three-four-rhythm-drill",
        title: "3/4 Rhythm Drill",
        category: .rhythm,
        summary: "Strong on 1, weaker on 2 and 3. The lilt of a waltz.",
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
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
            ], timeSignature: TimeSignature(numerator: 3, denominator: 4)),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
            ], timeSignature: TimeSignature(numerator: 3, denominator: 4)),
        ]
    )
}

import Foundation

enum WaltzBassCLesson {
    static let lesson = Lesson(
        id: "waltz-bass-c",
        title: "Waltz Bass",
        category: .scalesChords,
        summary: "Oom-pah-pah in 3/4. Pinky plays the bass note, fingers 2-3 play the chord above.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.E, 3), Pitch(.G, 3)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 3), Pitch(.G, 3)], duration: .quarter, finger: nil),
            ], timeSignature: TimeSignature(numerator: 3, denominator: 4)),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.E, 3), Pitch(.G, 3)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 3), Pitch(.G, 3)], duration: .quarter, finger: nil),
            ], timeSignature: TimeSignature(numerator: 3, denominator: 4)),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 2)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.D, 3), Pitch(.G, 3)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 3), Pitch(.G, 3)], duration: .quarter, finger: nil),
            ], timeSignature: TimeSignature(numerator: 3, denominator: 4)),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.E, 3), Pitch(.G, 3)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 3), Pitch(.G, 3)], duration: .quarter, finger: nil),
            ], timeSignature: TimeSignature(numerator: 3, denominator: 4)),
        ]
    )
}

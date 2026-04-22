import Foundation

enum CSecondInversionLesson {
    static let lesson = Lesson(
        id: "c-second-inversion",
        title: "C Chord: 2nd Inversion",
        category: .scalesChords,
        summary: "Lift again: G–C–E. Cycle through all three positions of C major.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 4), Pitch(.G, 4), Pitch(.C, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 4), Pitch(.C, 5), Pitch(.E, 5)], duration: .half, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4), Pitch(.C, 5), Pitch(.E, 5)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

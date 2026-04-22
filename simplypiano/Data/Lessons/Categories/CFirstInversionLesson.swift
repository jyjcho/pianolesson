import Foundation

enum CFirstInversionLesson {
    static let lesson = Lesson(
        id: "c-first-inversion",
        title: "C Chord: 1st Inversion",
        category: .scalesChords,
        summary: "Lift the root to the top: E–G–C. Same three notes, different order.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .half, finger: nil),
                .note(pitches: [Pitch(.E, 4), Pitch(.G, 4), Pitch(.C, 5)], duration: .half, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4), Pitch(.G, 4), Pitch(.C, 5)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

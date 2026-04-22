import Foundation

enum CInversionCycleLesson {
    static let lesson = Lesson(
        id: "c-inversion-cycle",
        title: "C Chord Inversion Cycle",
        category: .scalesChords,
        summary: "Root → 1st inversion → 2nd inversion → root. Same three notes climbing higher.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4), Pitch(.G, 4), Pitch(.C, 5)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4), Pitch(.C, 5), Pitch(.E, 5)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 5), Pitch(.E, 5), Pitch(.G, 5)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

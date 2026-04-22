import Foundation

enum CMajorChordLesson {
    static let lesson = Lesson(
        id: "c-major-chord",
        title: "C Major Chord",
        category: .scalesChords,
        summary: "Play C–E–G together — root position triad.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .half, finger: nil),
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .half, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

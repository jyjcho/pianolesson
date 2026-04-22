import Foundation

enum GMajorChordLesson {
    static let lesson = Lesson(
        id: "g-major-chord",
        title: "G Major Chord",
        category: .scalesChords,
        summary: "Play G–B–D together — root position triad.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4), Pitch(.B, 4), Pitch(.D, 5)], duration: .half, finger: nil),
                .note(pitches: [Pitch(.G, 4), Pitch(.B, 4), Pitch(.D, 5)], duration: .half, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4), Pitch(.B, 4), Pitch(.D, 5)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

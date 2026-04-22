import Foundation

enum FMajorChordLesson {
    static let lesson = Lesson(
        id: "f-major-chord",
        title: "F Major Chord",
        category: .scalesChords,
        summary: "Play F–A–C together — root position triad. Right hand fingers 1-3-5.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.F, 4), Pitch(.A, 4), Pitch(.C, 5)], duration: .half, finger: nil),
                .note(pitches: [Pitch(.F, 4), Pitch(.A, 4), Pitch(.C, 5)], duration: .half, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 4), Pitch(.A, 4), Pitch(.C, 5)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

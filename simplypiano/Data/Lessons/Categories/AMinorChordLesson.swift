import Foundation

enum AMinorChordLesson {
    static let lesson = Lesson(
        id: "a-minor-chord",
        title: "A Minor Chord",
        category: .scalesChords,
        summary: "A-C-E. The sad cousin of C major — just one note different.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.A, 3), Pitch(.C, 4), Pitch(.E, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 3)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 3), Pitch(.C, 4), Pitch(.E, 4)], duration: .half, finger: nil),
                .note(pitches: [Pitch(.A, 3), Pitch(.C, 4), Pitch(.E, 4)], duration: .half, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 3), Pitch(.C, 4), Pitch(.E, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

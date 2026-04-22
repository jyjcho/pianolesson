import Foundation

enum EMinorNaturalLesson {
    static let lesson = Lesson(
        id: "e-minor-natural",
        title: "E Natural Minor",
        category: .scalesChords,
        summary: "E F♯ G A B C D E — relative minor of G major. One sharp.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.F, 4, accidental: .sharp)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.E, 5)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 5)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 4, accidental: .sharp)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 1),
            ]),
        ]
    )
}

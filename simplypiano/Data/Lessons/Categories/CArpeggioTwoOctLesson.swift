import Foundation

enum CArpeggioTwoOctLesson {
    static let lesson = Lesson(
        id: "c-arpeggio-two-oct",
        title: "C Arpeggio: Two Octaves",
        category: .scalesChords,
        summary: "C E G C E G C — thumb under twice. Longer reaches, steadier rhythm.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.C, 5)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.E, 5)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.G, 5)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.C, 6)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 6)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.G, 5)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.E, 5)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.C, 5)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.C, 5)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4), Pitch(.C, 5)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

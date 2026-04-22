import Foundation

enum CArpeggioOneOctLesson {
    static let lesson = Lesson(
        id: "c-arpeggio-one-oct",
        title: "C Arpeggio: One Octave",
        category: .scalesChords,
        summary: "Broken C chord — C E G C. Rolling fingers 1-2-3-5.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.C, 5)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.C, 5)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.C, 4)], duration: .eighth, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4), Pitch(.C, 5)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

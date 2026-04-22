import Foundation

enum FArpeggioLesson {
    static let lesson = Lesson(
        id: "f-arpeggio",
        title: "F Arpeggio",
        category: .scalesChords,
        summary: "F A C F — the subdominant arpeggio. Practice slow, hands relaxed.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.F, 3)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.A, 3)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.A, 3)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 3)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 3)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.A, 3)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.C, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.F, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.F, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.A, 3)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.F, 3)], duration: .eighth, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 3), Pitch(.A, 3), Pitch(.C, 4), Pitch(.F, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

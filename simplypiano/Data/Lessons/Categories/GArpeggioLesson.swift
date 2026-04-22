import Foundation

enum GArpeggioLesson {
    static let lesson = Lesson(
        id: "g-arpeggio",
        title: "G Arpeggio",
        category: .scalesChords,
        summary: "G B D G — the dominant arpeggio. Reach across with 3 then thumb under to 1.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.B, 3)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.B, 3)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 3)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.B, 3)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.B, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.D, 5)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.G, 5)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3), Pitch(.B, 3), Pitch(.D, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

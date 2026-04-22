import Foundation

enum OldMacDonaldLesson {
    static let lesson = Lesson(
        id: "old-macdonald",
        title: "Old MacDonald",
        category: .famousSongs,
        summary: "Classic farm tune in G position. Right hand fingers 1–5 plus a leap up to B.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.D, 4)], duration: .half, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .whole, finger: 1),
            ]),
        ]
    )
}

import Foundation

enum FPositionBFlatDrillLesson {
    static let lesson = Lesson(
        id: "f-position-bflat-drill",
        title: "F Position: B♭ Drill",
        category: .scalesChords,
        summary: "Focus on B♭ — the black key between A and B. Finger 4 lands on a short black key.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.B, 4, accidental: .flat)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.B, 4, accidental: .flat)], duration: .quarter, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.B, 4, accidental: .flat)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.B, 4, accidental: .flat)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 4)], duration: .whole, finger: 1),
            ]),
        ]
    )
}

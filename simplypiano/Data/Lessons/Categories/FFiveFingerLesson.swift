import Foundation

enum FFiveFingerLesson {
    static let lesson = Lesson(
        id: "f-five-finger",
        title: "F 5-Finger (B♭)",
        category: .scalesChords,
        summary: "Right hand, F position: F–G–A–B♭–C. The 4th note is a black key.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.B, 4, accidental: .flat)], duration: .quarter, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 5)], duration: .whole, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.B, 4, accidental: .flat)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 1),
            ]),
        ]
    )
}

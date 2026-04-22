import Foundation

enum FFiveFingerDownLesson {
    static let lesson = Lesson(
        id: "f-five-finger-down",
        title: "F 5-Finger: Down",
        category: .scalesChords,
        summary: "Start on C with pinky, walk down. The fourth note is B♭ — a black key.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.B, 4, accidental: .flat)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 4)], duration: .whole, finger: 1),
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

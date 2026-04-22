import Foundation

enum FFiveFingerFullLesson {
    static let lesson = Lesson(
        id: "f-five-finger-full",
        title: "F 5-Finger: Up and Back",
        category: .scalesChords,
        summary: "F-G-A-B♭-C, then down. B♭ is the black key between A and B — played with finger 4.",
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
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 4)], duration: .whole, finger: 1),
            ]),
        ]
    )
}

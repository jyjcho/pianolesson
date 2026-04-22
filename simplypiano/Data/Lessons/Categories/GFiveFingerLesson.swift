import Foundation

enum GFiveFingerLesson {
    static let lesson = Lesson(
        id: "g-five-finger",
        title: "G 5-Finger",
        category: .scalesChords,
        summary: "Right hand, G position: G–A–B–C–D. Fingers 1-2-3-4-5 up and back.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 5)], duration: .half, finger: 5),
                .note(pitches: [Pitch(.C, 5)], duration: .half, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.G, 4)], duration: .half, finger: 1),
            ]),
        ]
    )
}

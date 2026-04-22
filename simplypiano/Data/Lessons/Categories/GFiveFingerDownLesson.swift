import Foundation

enum GFiveFingerDownLesson {
    static let lesson = Lesson(
        id: "g-five-finger-down",
        title: "G 5-Finger: Down",
        category: .scalesChords,
        summary: "Start on D with pinky, walk down to G with thumb. Fingers 5-4-3-2-1.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .whole, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .whole, finger: 1),
            ]),
        ]
    )
}

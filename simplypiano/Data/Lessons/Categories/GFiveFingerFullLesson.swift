import Foundation

enum GFiveFingerFullLesson {
    static let lesson = Lesson(
        id: "g-five-finger-full",
        title: "G 5-Finger: Up and Back",
        category: .scalesChords,
        summary: "G-A-B-C-D, then D-C-B-A-G. Stay anchored in G position.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 5)], duration: .whole, finger: 5),
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

import Foundation

enum RHFingerIsolationLesson {
    static let lesson = Lesson(
        id: "rh-finger-isolation-drill",
        title: "One Finger at a Time",
        category: .noteId,
        summary: "Press each finger twice on its own key. Keep the others relaxed on the keys.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.G, 4)], duration: .half, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .whole, finger: 1),
            ]),
        ]
    )
}

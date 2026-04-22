import Foundation

enum FingerNumbersLesson {
    static let lesson = Lesson(
        id: "orient-finger-numbers",
        title: "Finger Numbers",
        category: .noteId,
        summary: "Right hand: thumb=1, index=2, middle=3, ring=4, pinky=5. Play 1→5 on white keys starting at C.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .whole, finger: 5),
            ]),
        ]
    )
}

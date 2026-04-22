import Foundation

enum AnyKeyLesson {
    static let lesson = Lesson(
        id: "orient-any-key",
        title: "Your First Keys",
        category: .noteId,
        summary: "Press any 8 keys. Listen to the sound — higher on the right, lower on the left.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: nil),
            ]),
        ]
    )
}

import Foundation

enum FindCLesson {
    static let lesson = Lesson(
        id: "orient-find-c",
        title: "Find C",
        category: .noteId,
        summary: "C is the white key just left of every 2-black-key group. Play middle C four times.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
            ]),
        ]
    )
}

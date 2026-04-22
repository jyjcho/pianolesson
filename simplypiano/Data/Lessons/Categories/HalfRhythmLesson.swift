import Foundation

enum HalfRhythmLesson {
    static let lesson = Lesson(
        id: "rhythm-halves",
        title: "Half Notes",
        category: .rhythm,
        summary: "Two half notes per measure — hold for two beats.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
            ]),
        ]
    )
}

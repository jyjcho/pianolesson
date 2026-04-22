import Foundation

enum RHThumbOnCLesson {
    static let lesson = Lesson(
        id: "rh-thumb-on-c",
        title: "Right Thumb on C",
        category: .noteId,
        summary: "Use your right thumb (finger 1) on middle C. One thumb, one note — keep it relaxed.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .whole, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .whole, finger: 1),
            ]),
        ]
    )
}

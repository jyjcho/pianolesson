import Foundation

enum MiddleCFromStaffLesson {
    static let lesson = Lesson(
        id: "middle-c-from-staff",
        title: "Middle C on the Staff",
        category: .noteId,
        summary: "Middle C sits on a short ledger line below the treble staff. See it, play it with your thumb.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .whole, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .whole, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
            ]),
        ]
    )
}

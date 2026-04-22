import Foundation

enum StaffIntroLesson {
    static let lesson = Lesson(
        id: "staff-intro",
        title: "The Staff",
        category: .noteId,
        summary: "Notes live on 5 lines and 4 spaces. Middle C sits on a short ledger line between the clefs.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 4)], duration: .half, finger: 2),
                .note(pitches: [Pitch(.D, 4)], duration: .half, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .whole, finger: 3),
            ]),
        ]
    )
}

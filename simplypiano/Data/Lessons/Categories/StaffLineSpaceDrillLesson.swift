import Foundation

enum StaffLineSpaceDrillLesson {
    static let lesson = Lesson(
        id: "staff-line-space-drill",
        title: "Lines and Spaces Mixed",
        category: .noteId,
        summary: "Lines: E-G-B-D-F. Spaces: F-A-C-E. Switch between them in one exercise.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 5)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: nil),
            ]),
        ]
    )
}

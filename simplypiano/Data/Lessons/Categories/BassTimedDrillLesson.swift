import Foundation

enum BassTimedDrillLesson {
    static let lesson = Lesson(
        id: "bass-timed-drill",
        title: "Bass Clef Flash Drill",
        category: .noteId,
        summary: "Quick reading on the bass staff — lines G-B-D-F-A, spaces A-C-E-G.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.G, 2)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.A, 2)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.B, 2)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.C, 3)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.D, 3)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.E, 3)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.F, 3)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.G, 3)], duration: .eighth, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 3)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.G, 3)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.F, 3)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.E, 3)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.D, 3)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.C, 3)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.B, 2)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.A, 2)], duration: .eighth, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 2)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.B, 2)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 3)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.F, 3)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 3)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

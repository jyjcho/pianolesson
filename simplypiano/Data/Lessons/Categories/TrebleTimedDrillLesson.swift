import Foundation

enum TrebleTimedDrillLesson {
    static let lesson = Lesson(
        id: "treble-timed-drill",
        title: "Treble Clef Flash Drill",
        category: .noteId,
        summary: "Eight notes per measure. Read ahead — don't hunt each one.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.F, 4)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.A, 4)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.B, 4)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.D, 5)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.C, 5)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.E, 5)], duration: .eighth, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 5)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.D, 5)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.E, 5)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.C, 5)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.B, 4)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.A, 4)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: nil),
                .note(pitches: [Pitch(.F, 4)], duration: .eighth, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 5)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

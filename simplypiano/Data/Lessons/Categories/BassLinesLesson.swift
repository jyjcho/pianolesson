import Foundation

enum BassLinesLesson {
    static let lesson = Lesson(
        id: "bass-clef-lines",
        title: "Bass Clef Lines",
        category: .noteId,
        summary: "Bass clef lines from bottom: G–B–D–F–A. Mnemonic: Good Boys Do Fine Always.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.G, 2)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.B, 2)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.D, 3)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 3)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 3)], duration: .whole, finger: 1),
            ]),
        ]
    )
}

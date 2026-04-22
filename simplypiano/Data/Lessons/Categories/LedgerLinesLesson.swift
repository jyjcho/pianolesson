import Foundation

enum LedgerLinesLesson {
    static let lesson = Lesson(
        id: "ledger-lines",
        title: "Ledger Lines",
        category: .noteId,
        summary: "Notes above and below the staff.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.A, 3)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.A, 3)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.A, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.A, 5)], duration: .quarter, finger: nil),
            ]),
        ]
    )
}

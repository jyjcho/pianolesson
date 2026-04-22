import Foundation

enum BlackKeysLesson {
    static let lesson = Lesson(
        id: "orient-black-keys",
        title: "Black Key Groups",
        category: .noteId,
        summary: "Black keys come in groups of 2 and 3. Play each pair and triple.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4, accidental: .sharp)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 4, accidental: .sharp)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.F, 4, accidental: .sharp)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 4, accidental: .sharp)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 4, accidental: .sharp)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 5, accidental: .sharp)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 5, accidental: .sharp)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.F, 5, accidental: .sharp)], duration: .quarter, finger: nil),
            ]),
        ]
    )
}

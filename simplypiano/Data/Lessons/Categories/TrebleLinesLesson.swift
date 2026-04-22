import Foundation

enum TrebleLinesLesson {
    static let lesson = Lesson(
        id: "treble-lines",
        title: "Treble Clef Lines",
        category: .noteId,
        summary: "Every Good Boy Does Fine — E, G, B, D, F.",
        measures: [
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

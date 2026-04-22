import Foundation

enum LHWholeNotesLesson {
    static let lesson = Lesson(
        id: "lh-whole-notes",
        title: "Left Hand: Whole Notes",
        category: .rhythm,
        summary: "Long bass tones. Pinky (5) on C3, thumb (1) on G3 — alternate and hold each for 4 beats.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3)], duration: .whole, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3)], duration: .whole, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3)], duration: .whole, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3)], duration: .whole, finger: 1),
            ]),
        ]
    )
}

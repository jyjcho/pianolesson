import Foundation

enum HandsTogetherWholeLesson {
    static let lesson = Lesson(
        id: "hands-together-whole",
        title: "Hands Together: Whole Notes",
        category: .scalesChords,
        summary: "LH and RH strike together. Bass note low, melody note an octave above — hold each for 4 beats.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 3), Pitch(.F, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

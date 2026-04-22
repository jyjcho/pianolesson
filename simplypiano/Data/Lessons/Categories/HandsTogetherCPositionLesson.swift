import Foundation

enum HandsTogetherCPositionLesson {
    static let lesson = Lesson(
        id: "hands-together-c-position",
        title: "Hands Together: C Position",
        category: .scalesChords,
        summary: "Both hands play C-D-E-F-G in parallel, one octave apart. Stay in sync.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 3), Pitch(.D, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 3), Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.F, 3), Pitch(.F, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3), Pitch(.G, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.F, 3), Pitch(.F, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 3), Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 3), Pitch(.D, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

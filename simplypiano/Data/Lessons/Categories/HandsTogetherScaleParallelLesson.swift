import Foundation

enum HandsTogetherScaleParallelLesson {
    static let lesson = Lesson(
        id: "hands-together-scale-parallel",
        title: "Hands Together: C Scale Parallel",
        category: .scalesChords,
        summary: "Both hands play the C scale in the same direction, one octave apart.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 3), Pitch(.D, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 3), Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.F, 3), Pitch(.F, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3), Pitch(.G, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.A, 3), Pitch(.A, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.B, 3), Pitch(.B, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 4), Pitch(.C, 5)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.C, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.B, 3), Pitch(.B, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.A, 3), Pitch(.A, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 3), Pitch(.G, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 3), Pitch(.F, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 3), Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 3), Pitch(.D, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 4)], duration: .quarter, finger: nil),
            ]),
        ]
    )
}

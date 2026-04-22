import Foundation

enum HandsTogetherTwinkleLesson {
    static let lesson = Lesson(
        id: "hands-together-twinkle",
        title: "Hands Together: Twinkle",
        category: .famousSongs,
        summary: "Right hand melody, left hand on C. Every beat: bass note under melody note.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.G, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.G, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.A, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.A, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.G, 4)], duration: .half, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 3), Pitch(.F, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.F, 3), Pitch(.F, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3), Pitch(.D, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 3), Pitch(.D, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 4)], duration: .half, finger: nil),
            ]),
        ]
    )
}

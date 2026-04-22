import Foundation

enum HandsTogetherOdeToJoyLesson {
    static let lesson = Lesson(
        id: "hands-together-ode-to-joy",
        title: "Hands Together: Ode to Joy",
        category: .famousSongs,
        summary: "Beethoven's melody with a gentle bass. Left hand on C, F, or G under the right-hand line.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.F, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.G, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.G, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.F, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.D, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.D, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 4)], duration: .half, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.D, 4)], duration: .half, finger: nil),
            ]),
        ]
    )
}

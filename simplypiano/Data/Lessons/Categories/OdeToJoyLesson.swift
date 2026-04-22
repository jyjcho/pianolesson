import Foundation

enum OdeToJoyLesson {
    static let lesson = Lesson(
        id: "ode-to-joy",
        title: "Ode to Joy",
        category: .famousSongs,
        summary: "Beethoven's Ninth — main theme.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 4)], duration: .half, finger: nil),
            ]),
        ]
    )
}

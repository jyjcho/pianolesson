import Foundation

enum TwinkleLesson {
    static let lesson = Lesson(
        id: "twinkle-twinkle",
        title: "Twinkle, Twinkle, Little Star",
        category: .famousSongs,
        summary: "The classic melody — first verse.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 4)], duration: .half, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: nil),
            ]),
        ]
    )
}

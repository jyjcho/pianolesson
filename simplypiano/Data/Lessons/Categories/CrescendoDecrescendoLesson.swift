import Foundation

enum CrescendoDecrescendoLesson {
    static let lesson = Lesson(
        id: "crescendo-decrescendo",
        title: "Crescendo & Decrescendo",
        category: .scalesChords,
        summary: "Start soft, gradually grow louder over 2 measures (crescendo), then fade back (decrescendo). Shape the rising and falling line.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
            ]),
        ]
    )
}

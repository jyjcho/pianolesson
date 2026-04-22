import Foundation

enum AmazingGraceLesson {
    static let lesson = Lesson(
        id: "amazing-grace",
        title: "Amazing Grace",
        category: .famousSongs,
        summary: "Beloved hymn in C major. Leaps and steps combined — take it slowly.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .half, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: 1),
                .note(pitches: [Pitch(.A, 3)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 3)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .whole, finger: 1),
            ]),
        ]
    )
}

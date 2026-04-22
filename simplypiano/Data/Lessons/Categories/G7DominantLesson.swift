import Foundation

enum G7DominantLesson {
    static let lesson = Lesson(
        id: "g7-dominant",
        title: "G7 Dominant Seventh",
        category: .scalesChords,
        summary: "G B D F — V7 in C major. The chord that wants to go home.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3), Pitch(.B, 3), Pitch(.D, 4), Pitch(.F, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.B, 3)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3), Pitch(.B, 3), Pitch(.D, 4), Pitch(.F, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

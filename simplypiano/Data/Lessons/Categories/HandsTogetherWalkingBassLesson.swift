import Foundation

enum HandsTogetherWalkingBassLesson {
    static let lesson = Lesson(
        id: "hands-together-walking-bass",
        title: "Hands Together: Walking Bass",
        category: .scalesChords,
        summary: "Right hand stays on a held melody note while the left hand walks C-D-E-G beneath.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 3), Pitch(.C, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 3), Pitch(.C, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 3), Pitch(.C, 5)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3), Pitch(.E, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 3), Pitch(.E, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 3), Pitch(.E, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 5)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.G, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 3), Pitch(.G, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 3), Pitch(.F, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 3), Pitch(.E, 5)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 5)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

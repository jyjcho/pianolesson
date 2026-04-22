import Foundation

enum HandsTogetherAlbertiLesson {
    static let lesson = Lesson(
        id: "hands-together-alberti",
        title: "Hands Together: Alberti Bass",
        category: .scalesChords,
        summary: "Right hand melody over left hand Alberti pattern — C-G-E-G, broken chord accompaniment.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 3), Pitch(.D, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 3), Pitch(.E, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 3), Pitch(.D, 5)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 3), Pitch(.E, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 3), Pitch(.G, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 3), Pitch(.E, 5)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.F, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 3), Pitch(.E, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 3), Pitch(.D, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 3), Pitch(.E, 5)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 5)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

import Foundation

enum AlbertiBassCLesson {
    static let lesson = Lesson(
        id: "alberti-bass-c",
        title: "Alberti Bass",
        category: .scalesChords,
        summary: "Bottom, top, middle, top — C-G-E-G. Classical accompaniment over the C chord.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.G, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.E, 3)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.G, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.C, 3)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.G, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.E, 3)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.G, 3)], duration: .eighth, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.G, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.E, 3)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.G, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.C, 3)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.G, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.E, 3)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.G, 3)], duration: .eighth, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

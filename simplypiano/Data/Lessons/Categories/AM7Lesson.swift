import Foundation

enum AM7Lesson {
    static let lesson = Lesson(
        id: "am7",
        title: "Am7 Minor Seventh",
        category: .scalesChords,
        summary: "A C E G — minor triad with a minor 7th. The ii chord in G, the vi chord in C.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.A, 3), Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 3)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 3), Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .half, finger: nil),
                .note(pitches: [Pitch(.A, 3), Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .half, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 4), Pitch(.F, 4), Pitch(.A, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

import Foundation

enum ChordProgressionLesson {
    static let lesson = Lesson(
        id: "chord-progression-c-f-g",
        title: "I–IV–V in C",
        category: .scalesChords,
        summary: "The backbone of thousands of songs: C, F, G, back to C.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 4), Pitch(.A, 4), Pitch(.C, 5)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4), Pitch(.B, 4), Pitch(.D, 5)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

import Foundation

enum CMaj7Lesson {
    static let lesson = Lesson(
        id: "cmaj7",
        title: "Cmaj7 Major Seventh",
        category: .scalesChords,
        summary: "C E G B — the dreamy jazz chord. Major triad with a major 7th on top.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4), Pitch(.B, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4), Pitch(.B, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

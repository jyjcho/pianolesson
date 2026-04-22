import Foundation

enum Blues12BarLesson {
    static let lesson = Lesson(
        id: "blues-12-bar",
        title: "12-Bar Blues (Short)",
        category: .scalesChords,
        summary: "C → F → C → G → F → C. The bones of every blues tune ever.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 4), Pitch(.G, 4), Pitch(.B, 4, accidental: .flat)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 2), Pitch(.F, 4), Pitch(.A, 4), Pitch(.C, 5), Pitch(.E, 5, accidental: .flat)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 2), Pitch(.G, 4), Pitch(.B, 4), Pitch(.D, 5), Pitch(.F, 5)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 4), Pitch(.G, 4), Pitch(.B, 4, accidental: .flat)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

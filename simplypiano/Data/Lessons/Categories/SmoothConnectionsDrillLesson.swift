import Foundation

enum SmoothConnectionsDrillLesson {
    static let lesson = Lesson(
        id: "smooth-connections-drill",
        title: "Smooth Connections",
        category: .scalesChords,
        summary: "C → Am → F → G → C, all in close position. Minimal hand movement between chords.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.A, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.F, 4), Pitch(.A, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 3), Pitch(.D, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

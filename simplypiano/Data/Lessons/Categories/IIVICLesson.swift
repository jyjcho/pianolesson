import Foundation

enum IIVICLesson {
    static let lesson = Lesson(
        id: "ii-v-i-c",
        title: "ii-V-I in C",
        category: .scalesChords,
        summary: "Dm7 → G7 → Cmaj7. The most common cadence in jazz.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.D, 3), Pitch(.F, 3), Pitch(.A, 3), Pitch(.C, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 2), Pitch(.B, 3), Pitch(.D, 4), Pitch(.F, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 4), Pitch(.G, 4), Pitch(.B, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 4), Pitch(.G, 4), Pitch(.B, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

import Foundation

enum EtudeHandsTogetherFullLesson {
    static let lesson = Lesson(
        id: "etude-hands-together-full",
        title: "Etude: Capstone",
        category: .famousSongs,
        summary: "The final etude — melody, harmony, and rhythm all together. I-vi-IV-V-I in C with flowing RH eighths over block chords.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3), Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3), Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3), Pitch(.G, 4)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3), Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3), Pitch(.C, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 2), Pitch(.C, 3), Pitch(.E, 3), Pitch(.A, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.A, 2), Pitch(.C, 3), Pitch(.E, 3), Pitch(.C, 5)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.A, 2), Pitch(.C, 3), Pitch(.E, 3), Pitch(.A, 4)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.A, 2), Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.A, 2), Pitch(.C, 3), Pitch(.E, 3), Pitch(.E, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 2), Pitch(.A, 2), Pitch(.C, 3), Pitch(.F, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.F, 2), Pitch(.A, 2), Pitch(.C, 3), Pitch(.A, 4)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.F, 2), Pitch(.A, 2), Pitch(.C, 3), Pitch(.C, 5)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.G, 2), Pitch(.B, 2), Pitch(.D, 3), Pitch(.B, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.G, 2), Pitch(.B, 2), Pitch(.D, 3), Pitch(.D, 5)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3), Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3), Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 2), Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3), Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4), Pitch(.C, 5)], duration: .half, finger: nil),
            ]),
        ]
    )
}

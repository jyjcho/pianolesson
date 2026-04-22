import Foundation

enum EtudeMelodyWithChordsLesson {
    static let lesson = Lesson(
        id: "etude-melody-with-chords",
        title: "Etude: Melody With Chords",
        category: .famousSongs,
        summary: "RH melody sings above LH block chords. C-F-G-C progression with a stepwise melody line on top.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3), Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3), Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3), Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3), Pitch(.G, 4)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 2), Pitch(.A, 2), Pitch(.C, 3), Pitch(.A, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.F, 2), Pitch(.A, 2), Pitch(.C, 3), Pitch(.G, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.F, 2), Pitch(.A, 2), Pitch(.C, 3), Pitch(.F, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.F, 2), Pitch(.A, 2), Pitch(.C, 3), Pitch(.A, 4)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 2), Pitch(.B, 2), Pitch(.D, 3), Pitch(.B, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.G, 2), Pitch(.B, 2), Pitch(.D, 3), Pitch(.A, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.G, 2), Pitch(.B, 2), Pitch(.D, 3), Pitch(.G, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 2), Pitch(.B, 2), Pitch(.D, 3), Pitch(.F, 4)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3), Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3), Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3), Pitch(.C, 4)], duration: .half, finger: 1),
            ]),
        ]
    )
}

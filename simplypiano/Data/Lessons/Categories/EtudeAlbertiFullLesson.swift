import Foundation

enum EtudeAlbertiFullLesson {
    static let lesson = Lesson(
        id: "etude-alberti-full",
        title: "Etude: Full Alberti",
        category: .famousSongs,
        summary: "Classical Alberti bass under a singable melody. LH: low-high-middle-high pattern; RH: flowing quarter-note line.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.G, 3), Pitch(.C, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.E, 3), Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.G, 3), Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.C, 3), Pitch(.G, 4)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.G, 3), Pitch(.G, 4)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.E, 3), Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.G, 3), Pitch(.C, 4)], duration: .eighth, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 2), Pitch(.A, 4)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.C, 3), Pitch(.A, 4)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.A, 2), Pitch(.F, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.C, 3), Pitch(.A, 4)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.F, 2), Pitch(.G, 4)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.C, 3), Pitch(.F, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.A, 2), Pitch(.A, 4)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.C, 3), Pitch(.F, 4)], duration: .eighth, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 2), Pitch(.G, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.D, 3), Pitch(.G, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.B, 2), Pitch(.B, 4)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.D, 3), Pitch(.G, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.G, 2), Pitch(.D, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.D, 3), Pitch(.G, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.B, 2), Pitch(.D, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.D, 3), Pitch(.G, 4)], duration: .eighth, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.E, 3), Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3), Pitch(.C, 4)], duration: .half, finger: 1),
            ]),
        ]
    )
}

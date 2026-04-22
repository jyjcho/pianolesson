import Foundation

enum ScalePatternDrillLesson {
    static let lesson = Lesson(
        id: "scale-pattern-drill",
        title: "Scales in Groups of Three",
        category: .scalesChords,
        summary: "C major in sets of three — up three, back one. A classic technique pattern.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.F, 4)], duration: .eighth, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.A, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.B, 4)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.A, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.B, 4)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.C, 5)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.B, 4)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.A, 4)], duration: .eighth, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.F, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .whole, finger: 1),
            ]),
        ]
    )
}

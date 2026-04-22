import Foundation

enum HTScaleVariedRhythmLesson {
    static let lesson = Lesson(
        id: "ht-scale-varied-rhythm",
        title: "HT: Scale, Varied Rhythm",
        category: .scalesChords,
        summary: "C scale both hands together with rhythmic variety — half and quarter notes. Hands locked in sync.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 4)], duration: .half, finger: 5),
                .note(pitches: [Pitch(.D, 3), Pitch(.D, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.E, 3), Pitch(.E, 4)], duration: .quarter, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 3), Pitch(.F, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.G, 3), Pitch(.G, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.A, 3), Pitch(.A, 4)], duration: .half, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 3), Pitch(.B, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 4), Pitch(.C, 5)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.B, 3), Pitch(.B, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.A, 3), Pitch(.A, 4)], duration: .quarter, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3), Pitch(.G, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.F, 3), Pitch(.F, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 4)], duration: .half, finger: 5),
            ]),
        ]
    )
}

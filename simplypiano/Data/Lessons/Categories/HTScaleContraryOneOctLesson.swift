import Foundation

enum HTScaleContraryOneOctLesson {
    static let lesson = Lesson(
        id: "ht-scale-contrary-one-oct",
        title: "HT: Contrary Motion C Scale",
        category: .scalesChords,
        summary: "Both hands start on middle C and move outward, then back together. Mirror-image fingering.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.B, 3), Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.A, 3), Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 3), Pitch(.F, 4)], duration: .quarter, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 3), Pitch(.G, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 3), Pitch(.A, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 3), Pitch(.B, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 5)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 3), Pitch(.B, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.E, 3), Pitch(.A, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 3), Pitch(.G, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.G, 3), Pitch(.F, 4)], duration: .quarter, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 3), Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.B, 3), Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 4), Pitch(.C, 4)], duration: .half, finger: 1),
            ]),
        ]
    )
}

import Foundation

enum HTCScaleTwoOctLesson {
    static let lesson = Lesson(
        id: "ht-c-scale-two-oct",
        title: "HT: C Scale Two Octaves",
        category: .scalesChords,
        summary: "Both hands C scale across two octaves. Thumb-unders coordinate between hands. LH C2, RH C4 on the downbeat.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 2), Pitch(.C, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.D, 2), Pitch(.D, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.E, 2), Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 2), Pitch(.F, 4)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 2), Pitch(.G, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.A, 2), Pitch(.A, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.B, 2), Pitch(.B, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 5)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 3), Pitch(.D, 5)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.E, 3), Pitch(.E, 5)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.F, 3), Pitch(.F, 5)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.G, 3), Pitch(.G, 5)], duration: .quarter, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 3), Pitch(.A, 5)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.B, 3), Pitch(.B, 5)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 4), Pitch(.C, 6)], duration: .half, finger: 5),
            ]),
        ]
    )
}

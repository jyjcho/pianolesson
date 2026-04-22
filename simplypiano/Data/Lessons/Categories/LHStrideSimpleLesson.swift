import Foundation

enum LHStrideSimpleLesson {
    static let lesson = Lesson(
        id: "lh-stride-simple",
        title: "LH: Simple Stride",
        category: .scalesChords,
        summary: "Bass note, then chord above — classic stride pattern. Low C then C-E-G, low G then G-B-D.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 2)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 2)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 2)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.C, 3), Pitch(.F, 3), Pitch(.A, 3)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.F, 2)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.C, 3), Pitch(.F, 3), Pitch(.A, 3)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 2)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.B, 2), Pitch(.D, 3), Pitch(.G, 3)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.G, 2)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.B, 2), Pitch(.D, 3), Pitch(.G, 3)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 2)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 2), Pitch(.C, 3), Pitch(.E, 3), Pitch(.G, 3)], duration: .half, finger: 1),
            ]),
        ]
    )
}

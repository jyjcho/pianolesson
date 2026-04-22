import Foundation

enum HTGScaleParallelLesson {
    static let lesson = Lesson(
        id: "ht-g-scale-parallel",
        title: "HT: G Scale Parallel",
        category: .scalesChords,
        summary: "Both hands G scale, one octave apart. Watch for F♯. LH G3, RH G4, same fingers both hands.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3), Pitch(.G, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.A, 3), Pitch(.A, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.B, 3), Pitch(.B, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.C, 4), Pitch(.C, 5)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 4), Pitch(.D, 5)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 4), Pitch(.E, 5)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 4, accidental: .sharp), Pitch(.F, 5, accidental: .sharp)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.G, 4), Pitch(.G, 5)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 4, accidental: .sharp), Pitch(.F, 5, accidental: .sharp)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.E, 4), Pitch(.E, 5)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 4), Pitch(.D, 5)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 4), Pitch(.C, 5)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 3), Pitch(.B, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.A, 3), Pitch(.A, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.G, 3), Pitch(.G, 4)], duration: .half, finger: 5),
            ]),
        ]
    )
}

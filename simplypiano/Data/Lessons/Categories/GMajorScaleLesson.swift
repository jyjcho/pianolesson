import Foundation

enum GMajorScaleLesson {
    static let lesson = Lesson(
        id: "g-major-scale",
        title: "G Major Scale",
        category: .scalesChords,
        summary: "Ascending G major with F# — right-hand fingering 1-2-3-1-2-3-4-5.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.E, 5)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 5, accidental: .sharp)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.G, 5)], duration: .quarter, finger: 5),
            ]),
        ]
    )
}

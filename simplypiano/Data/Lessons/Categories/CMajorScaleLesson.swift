import Foundation

enum CMajorScaleLesson {
    static let lesson = Lesson(
        id: "c-major-scale",
        title: "C Major Scale",
        category: .scalesChords,
        summary: "Ascending C major — right-hand fingering 1-2-3-1-2-3-4-5.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 5),
            ]),
        ]
    )
}

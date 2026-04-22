import Foundation

enum CMajorScaleDownLesson {
    static let lesson = Lesson(
        id: "c-major-scale-descending",
        title: "C Major Scale: Down",
        category: .scalesChords,
        summary: "Descending C major, right hand. Fingering 5-4-3-2-1-3-2-1.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
            ]),
        ]
    )
}

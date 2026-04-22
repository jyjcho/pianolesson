import Foundation

enum FMajorScaleLesson {
    static let lesson = Lesson(
        id: "f-major-scale",
        title: "F Major Scale",
        category: .scalesChords,
        summary: "Ascending F major, right hand. B becomes B♭ (black key). Fingering 1-2-3-4-1-2-3-4.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.B, 4, accidental: .flat)], duration: .quarter, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.E, 5)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 5)], duration: .quarter, finger: 4),
            ]),
        ]
    )
}

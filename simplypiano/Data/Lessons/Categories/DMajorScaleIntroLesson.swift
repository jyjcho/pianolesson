import Foundation

enum DMajorScaleIntroLesson {
    static let lesson = Lesson(
        id: "d-major-scale-intro",
        title: "D Major Scale: Intro",
        category: .scalesChords,
        summary: "D up to D an octave above. Two sharps — F♯ and C♯. Thumb tucks at G.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.F, 4, accidental: .sharp)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.C, 5, accidental: .sharp)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.C, 5, accidental: .sharp)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.F, 4, accidental: .sharp)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.D, 4)], duration: .quarter, finger: 1),
            ]),
        ]
    )
}

import Foundation

enum EFlatMajorScaleLesson {
    static let lesson = Lesson(
        id: "eflat-major-scale",
        title: "E♭ Major Scale",
        category: .scalesChords,
        summary: "E♭ F G A♭ B♭ C D E♭ — three flats. Thumb lands on C, finger 3 stays on the black keys.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4, accidental: .flat)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.A, 4, accidental: .flat)], duration: .quarter, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 4, accidental: .flat)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.E, 5, accidental: .flat)], duration: .quarter, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 5, accidental: .flat)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.B, 4, accidental: .flat)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 4, accidental: .flat)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 4, accidental: .flat)], duration: .quarter, finger: 3),
            ]),
        ]
    )
}

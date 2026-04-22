import Foundation

enum ScaleFingeringDrillLesson {
    static let lesson = Lesson(
        id: "scale-fingering-drill",
        title: "Scale Fingering Drill",
        category: .scalesChords,
        summary: "Hover between E-F and B-C — the two thumb tucks. Practice each crossing in isolation.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.A, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.B, 4)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.C, 5)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.D, 5)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.E, 5)], duration: .eighth, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 5)], duration: .whole, finger: 1),
            ]),
        ]
    )
}

import Foundation

enum PositionShiftDrillLesson {
    static let lesson = Lesson(
        id: "position-shift-drill",
        title: "Shift Positions",
        category: .scalesChords,
        summary: "Move from C position to G position and back. Find each home key with your thumb first.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.B, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.D, 5)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
            ]),
        ]
    )
}

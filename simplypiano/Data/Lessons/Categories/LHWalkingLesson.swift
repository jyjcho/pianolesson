import Foundation

enum LHWalkingLesson {
    static let lesson = Lesson(
        id: "lh-walking",
        title: "Left Hand: Walking Bass",
        category: .scalesChords,
        summary: "LH walks up C3-D3-E3-F3-G3 and back — the building block of bass lines.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.D, 3)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.E, 3)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 3)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3)], duration: .half, finger: 1),
                .note(pitches: [Pitch(.G, 3)], duration: .half, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.F, 3)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.E, 3)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.D, 3)], duration: .quarter, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3)], duration: .whole, finger: 5),
            ]),
        ]
    )
}

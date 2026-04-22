import Foundation

enum LHCPositionLesson {
    static let lesson = Lesson(
        id: "lh-c-position",
        title: "Left Hand: C Position",
        category: .scalesChords,
        summary: "Left hand pinky on C3, thumb on G3. Play 5-4-3-2-1 walking up the bass.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.D, 3)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.E, 3)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.F, 3)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3)], duration: .whole, finger: 1),
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

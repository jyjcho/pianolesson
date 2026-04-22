import Foundation

enum DynamicsFortePianoLesson {
    static let lesson = Lesson(
        id: "dynamics-forte-piano",
        title: "Dynamics: Forte & Piano",
        category: .scalesChords,
        summary: "Alternate measures: forte (loud) then piano (soft). Let the velocity of your keystroke change — not the speed.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.E, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: 1),
            ]),
        ]
    )
}

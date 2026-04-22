import Foundation

enum LHFiveNotePatternLesson {
    static let lesson = Lesson(
        id: "lh-five-note-pattern",
        title: "LH: Five-Note Pattern",
        category: .scalesChords,
        summary: "An accompaniment pattern in the left hand — root, third, fifth, and back.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.E, 3)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 3)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 3)], duration: .quarter, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.E, 3)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.G, 3)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 3)], duration: .quarter, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.F, 3)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.G, 3)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.F, 3)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3)], duration: .whole, finger: 5),
            ]),
        ]
    )
}

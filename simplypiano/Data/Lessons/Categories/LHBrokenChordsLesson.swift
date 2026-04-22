import Foundation

enum LHBrokenChordsLesson {
    static let lesson = Lesson(
        id: "lh-broken-chords",
        title: "LH: Broken Chords",
        category: .scalesChords,
        summary: "Left-hand broken C chord — root, 5th, 3rd, 5th. Keep it steady and light.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.G, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.E, 3)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.G, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.C, 3)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.G, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.E, 3)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.G, 3)], duration: .eighth, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 2)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.C, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.A, 2)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.C, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.F, 2)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.C, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.A, 2)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.C, 3)], duration: .eighth, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 2)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.D, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.B, 2)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.D, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.G, 2)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.D, 3)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.B, 2)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.D, 3)], duration: .eighth, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 3)], duration: .whole, finger: 5),
            ]),
        ]
    )
}

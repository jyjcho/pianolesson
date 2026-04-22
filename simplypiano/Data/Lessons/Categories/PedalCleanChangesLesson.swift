import Foundation

enum PedalCleanChangesLesson {
    static let lesson = Lesson(
        id: "pedal-clean-changes",
        title: "Pedal: Clean Changes",
        category: .scalesChords,
        summary: "Syncopated pedaling — as each new chord plays, lift then press the pedal to catch it cleanly without blur.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.A, 3), Pitch(.C, 4), Pitch(.E, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 3), Pitch(.A, 3), Pitch(.C, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3), Pitch(.B, 3), Pitch(.D, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

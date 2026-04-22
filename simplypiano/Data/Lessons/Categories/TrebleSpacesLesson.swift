import Foundation

enum TrebleSpacesLesson {
    static let lesson = Lesson(
        id: "treble-spaces",
        title: "Treble Clef Spaces",
        category: .noteId,
        summary: "FACE — F, A, C, E in the spaces.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.F, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 5)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 4)], duration: .half, finger: nil),
                .note(pitches: [Pitch(.E, 5)], duration: .half, finger: nil),
            ]),
        ]
    )
}

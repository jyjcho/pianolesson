import Foundation

enum BassSpacesLesson {
    static let lesson = Lesson(
        id: "bass-clef-spaces",
        title: "Bass Clef Spaces",
        category: .noteId,
        summary: "Bass clef spaces from bottom: A–C–E–G. Mnemonic: All Cows Eat Grass.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.A, 2)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.C, 3)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.E, 3)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.G, 3)], duration: .quarter, finger: 1),
            ]),
        ]
    )
}

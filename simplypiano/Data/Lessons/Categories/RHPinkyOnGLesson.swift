import Foundation

enum RHPinkyOnGLesson {
    static let lesson = Lesson(
        id: "rh-pinky-on-g",
        title: "Right Pinky on G",
        category: .noteId,
        summary: "Pinky (finger 5) plays G, four white keys above middle C. Pinkies are small — press firmly.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .whole, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .half, finger: 5),
                .note(pitches: [Pitch(.G, 4)], duration: .half, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .whole, finger: 5),
            ]),
        ]
    )
}

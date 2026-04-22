import Foundation

enum HappyBirthdayLesson {
    static let lesson = Lesson(
        id: "happy-birthday",
        title: "Happy Birthday",
        category: .famousSongs,
        summary: "Simplified melody — right hand in C position, reaching up to C5.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 5)], duration: .half, finger: 5),
                .note(pitches: [Pitch(.B, 4)], duration: .half, finger: 4),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.A, 4)], duration: .quarter, finger: 5),
                .note(pitches: [Pitch(.G, 4)], duration: .quarter, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 5)], duration: .half, finger: 5),
                .note(pitches: [Pitch(.C, 5)], duration: .half, finger: 5),
            ]),
        ]
    )
}

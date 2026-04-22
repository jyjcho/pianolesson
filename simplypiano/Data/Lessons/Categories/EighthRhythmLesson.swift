import Foundation

enum EighthRhythmLesson {
    static let lesson = Lesson(
        id: "eighth-rhythm",
        title: "Eighth Notes",
        category: .rhythm,
        summary: "Two eighths = one quarter. Count '1-and-2-and-3-and-4-and.'",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 5),
                .note(pitches: [Pitch(.F, 4)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .whole, finger: 1),
            ]),
        ]
    )
}

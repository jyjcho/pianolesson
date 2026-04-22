import Foundation

enum WholeRhythmLesson {
    static let lesson = Lesson(
        id: "whole-rhythm",
        title: "Whole Notes",
        category: .rhythm,
        summary: "A whole note lasts a full 4-beat measure. Count 1-2-3-4 while holding.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .whole, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .whole, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4)], duration: .whole, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .whole, finger: 1),
            ]),
        ]
    )
}

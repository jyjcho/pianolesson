import Foundation

enum RhythmWholeCountingLesson {
    static let lesson = Lesson(
        id: "rhythm-whole-counting",
        title: "Counting Whole Notes",
        category: .rhythm,
        summary: "Each whole note holds four beats. Count 1-2-3-4 out loud as you hold.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .whole, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 4)], duration: .whole, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4)], duration: .whole, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .whole, finger: 1),
            ]),
        ]
    )
}

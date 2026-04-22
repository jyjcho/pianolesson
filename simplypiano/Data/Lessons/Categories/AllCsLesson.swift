import Foundation

enum AllCsLesson {
    static let lesson = Lesson(
        id: "orient-find-all-cs",
        title: "Every C on the Piano",
        category: .noteId,
        summary: "Play every C from low to high. Each one doubles the pitch of the one before.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 2)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 5)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 6)], duration: .half, finger: nil),
                .note(pitches: [Pitch(.C, 4)], duration: .half, finger: nil),
            ]),
        ]
    )
}

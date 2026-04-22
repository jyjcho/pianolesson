import Foundation

enum OrientWhiteBlackGroupsLesson {
    static let lesson = Lesson(
        id: "orient-white-black-groups",
        title: "Groups of 2 and 3 Black Keys",
        category: .noteId,
        summary: "Black keys come in clumps of 2 and 3. Use them to find your place on the keyboard.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4, accidental: .sharp)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.D, 4, accidental: .sharp)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.C, 4, accidental: .sharp)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.D, 4, accidental: .sharp)], duration: .quarter, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 4, accidental: .sharp)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.G, 4, accidental: .sharp)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.A, 4, accidental: .sharp)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.F, 4, accidental: .sharp)], duration: .quarter, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4, accidental: .sharp)], duration: .half, finger: 2),
                .note(pitches: [Pitch(.F, 4, accidental: .sharp)], duration: .half, finger: 2),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4, accidental: .sharp)], duration: .whole, finger: 2),
            ]),
        ]
    )
}

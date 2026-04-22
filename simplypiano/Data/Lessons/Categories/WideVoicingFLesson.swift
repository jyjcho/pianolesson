import Foundation

enum WideVoicingFLesson {
    static let lesson = Lesson(
        id: "wide-voicing-f",
        title: "Wide Voicing: F Major",
        category: .scalesChords,
        summary: "Open F voicing: LH root + 5th, RH 3rd + 5th + root. Classical sonority spread across two octaves.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.F, 2), Pitch(.C, 3), Pitch(.A, 4), Pitch(.C, 5), Pitch(.F, 5)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 2), Pitch(.C, 3), Pitch(.A, 4), Pitch(.C, 5), Pitch(.F, 5)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 2), Pitch(.C, 3), Pitch(.A, 4), Pitch(.C, 5), Pitch(.F, 5)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 2), Pitch(.C, 3), Pitch(.A, 4), Pitch(.C, 5), Pitch(.F, 5)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

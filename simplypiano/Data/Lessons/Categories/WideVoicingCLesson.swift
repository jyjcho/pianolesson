import Foundation

enum WideVoicingCLesson {
    static let lesson = Lesson(
        id: "wide-voicing-c",
        title: "Wide Voicing: C Major",
        category: .scalesChords,
        summary: "Open voicing: LH plays root + 5th, RH plays 3rd + 5th + root on top. Spread across two octaves.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 2), Pitch(.G, 2), Pitch(.E, 4), Pitch(.G, 4), Pitch(.C, 5)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 2), Pitch(.G, 2), Pitch(.E, 4), Pitch(.G, 4), Pitch(.C, 5)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 2), Pitch(.G, 2), Pitch(.E, 4), Pitch(.G, 4), Pitch(.C, 5)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 2), Pitch(.G, 2), Pitch(.E, 4), Pitch(.G, 4), Pitch(.C, 5)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

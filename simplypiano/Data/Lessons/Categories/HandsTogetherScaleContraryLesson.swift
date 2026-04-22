import Foundation

enum HandsTogetherScaleContraryLesson {
    static let lesson = Lesson(
        id: "hands-together-scale-contrary",
        title: "Contrary Motion Scale",
        category: .scalesChords,
        summary: "Thumbs together on middle C. RH walks up while LH walks down — mirror image.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.B, 3), Pitch(.D, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.A, 3), Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 3), Pitch(.F, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 3), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 3), Pitch(.F, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.A, 3), Pitch(.E, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.B, 3), Pitch(.D, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .whole, finger: 1),
            ]),
        ]
    )
}

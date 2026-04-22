import Foundation

enum RHChordsLHBassLesson {
    static let lesson = Lesson(
        id: "rh-chords-lh-bass",
        title: "RH Chords, LH Bass",
        category: .scalesChords,
        summary: "Right hand holds a triad, left hand walks the bass. I-IV-V-I in C. LH moves; RH sustains the chord.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 2), Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.E, 2), Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 2), Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 2), Pitch(.C, 4), Pitch(.F, 4), Pitch(.A, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.A, 2), Pitch(.C, 4), Pitch(.F, 4), Pitch(.A, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 3), Pitch(.C, 4), Pitch(.F, 4), Pitch(.A, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.F, 3), Pitch(.C, 4), Pitch(.F, 4), Pitch(.A, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 2), Pitch(.B, 3), Pitch(.D, 4), Pitch(.G, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.B, 2), Pitch(.B, 3), Pitch(.D, 4), Pitch(.G, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.D, 3), Pitch(.B, 3), Pitch(.D, 4), Pitch(.G, 4)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 3), Pitch(.B, 3), Pitch(.D, 4), Pitch(.G, 4)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 2), Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

import Foundation

enum ChordMelodyIntroLesson {
    static let lesson = Lesson(
        id: "chord-melody-intro",
        title: "Chord Melody: Intro",
        category: .scalesChords,
        summary: "RH plays melody with the harmony note below it — Twinkle opening voiced with a 3rd below each melody note.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.E, 4), Pitch(.G, 4)], duration: .quarter, finger: 3),
                .note(pitches: [Pitch(.E, 4), Pitch(.G, 4)], duration: .quarter, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 4), Pitch(.A, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.F, 4), Pitch(.A, 4)], duration: .quarter, finger: 4),
                .note(pitches: [Pitch(.E, 4), Pitch(.G, 4)], duration: .half, finger: 3),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 4), Pitch(.F, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.D, 4), Pitch(.F, 4)], duration: .quarter, finger: 2),
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4)], duration: .quarter, finger: 1),
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4)], duration: .quarter, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: 1),
            ]),
        ]
    )
}

import Foundation

enum SustainPedalIntroLesson {
    static let lesson = Lesson(
        id: "sustain-pedal-intro",
        title: "Sustain Pedal: Intro",
        category: .scalesChords,
        summary: "Hold the sustain pedal down while playing these long notes — they ring into each other. Lift the pedal on the final C.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.E, 4), Pitch(.G, 4), Pitch(.C, 5)], duration: .whole, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 4), Pitch(.B, 4), Pitch(.D, 5)], duration: .whole, finger: 1),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4), Pitch(.C, 5)], duration: .whole, finger: 1),
            ]),
        ]
    )
}

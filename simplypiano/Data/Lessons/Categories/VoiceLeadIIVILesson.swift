import Foundation

enum VoiceLeadIIVILesson {
    static let lesson = Lesson(
        id: "voice-lead-ii-v-i",
        title: "Voice Leading: ii-V-I",
        category: .scalesChords,
        summary: "Dm7 → G7 → Cmaj7 — voiced so only single steps move between chords.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.D, 4), Pitch(.F, 4), Pitch(.A, 4), Pitch(.C, 5)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.D, 4), Pitch(.F, 4), Pitch(.G, 4), Pitch(.B, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4), Pitch(.B, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4), Pitch(.B, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

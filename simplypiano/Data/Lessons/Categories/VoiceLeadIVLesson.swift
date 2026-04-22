import Foundation

enum VoiceLeadIVLesson {
    static let lesson = Lesson(
        id: "voice-lead-i-v",
        title: "Voice Leading: I to V",
        category: .scalesChords,
        summary: "C root → G in 1st inversion (B-D-G). Common tone G, E moves to D, C moves to B.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 3), Pitch(.D, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4), Pitch(.E, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 3), Pitch(.D, 4), Pitch(.G, 4)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

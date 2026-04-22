import Foundation

enum TrebleAboveStaffLesson {
    static let lesson = Lesson(
        id: "treble-above-staff",
        title: "Above the Staff",
        category: .noteId,
        summary: "G, A, and B sit above the top line. High notes — ledger lines reach up to C6.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.G, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.A, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.B, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.C, 6)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 6)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.B, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.A, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 5)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.A, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.G, 5)], duration: .quarter, finger: nil),
                .note(pitches: [Pitch(.B, 5)], duration: .quarter, finger: nil),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 6)], duration: .whole, finger: nil),
            ]),
        ]
    )
}

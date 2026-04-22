import Foundation

enum CMajorScaleFullLesson {
    static let lesson = Lesson(
        id: "c-major-scale-full",
        title: "C Major Scale: Up & Down",
        category: .scalesChords,
        summary: "Full octave up then down. Fingering 1-2-3-1-2-3-4-5-4-3-2-1-3-2-1.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.F, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.A, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.B, 4)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.C, 5)], duration: .eighth, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.B, 4)], duration: .eighth, finger: 4),
                .note(pitches: [Pitch(.A, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.G, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.F, 4)], duration: .eighth, finger: 1),
                .note(pitches: [Pitch(.E, 4)], duration: .eighth, finger: 3),
                .note(pitches: [Pitch(.D, 4)], duration: .eighth, finger: 2),
                .note(pitches: [Pitch(.C, 4)], duration: .quarter, finger: 1),
            ]),
        ]
    )
}

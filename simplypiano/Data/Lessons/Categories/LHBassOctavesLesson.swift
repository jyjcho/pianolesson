import Foundation

enum LHBassOctavesLesson {
    static let lesson = Lesson(
        id: "lh-bass-octaves",
        title: "LH: Bass Octaves",
        category: .scalesChords,
        summary: "Left-hand octaves — C, F, G, C. Pinky on low note, thumb on the octave above. Stay relaxed.",
        measures: [
            Measure(notes: [
                .note(pitches: [Pitch(.C, 2), Pitch(.C, 3)], duration: .half, finger: 5),
                .note(pitches: [Pitch(.C, 2), Pitch(.C, 3)], duration: .half, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.F, 2), Pitch(.F, 3)], duration: .half, finger: 5),
                .note(pitches: [Pitch(.F, 2), Pitch(.F, 3)], duration: .half, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.G, 2), Pitch(.G, 3)], duration: .half, finger: 5),
                .note(pitches: [Pitch(.G, 2), Pitch(.G, 3)], duration: .half, finger: 5),
            ]),
            Measure(notes: [
                .note(pitches: [Pitch(.C, 2), Pitch(.C, 3)], duration: .whole, finger: 5),
            ]),
        ]
    )
}

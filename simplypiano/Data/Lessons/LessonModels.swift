import Foundation

enum LessonCategory: String, Codable, CaseIterable, Identifiable {
    case noteId
    case scalesChords
    case famousSongs
    case rhythm

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .noteId: return "Note Identification"
        case .scalesChords: return "Scales & Chords"
        case .famousSongs: return "Famous Songs"
        case .rhythm: return "Rhythm"
        }
    }
}

struct Lesson: Identifiable, Codable {
    let id: String
    let title: String
    let category: LessonCategory
    let summary: String
    let measures: [Measure]

    var expectedEvents: [Set<Pitch>] {
        measures.flatMap { measure in
            measure.notes.compactMap { note in
                if case let .note(pitches, _, _) = note {
                    return Set(pitches)
                }
                return nil
            }
        }
    }

    var expectedFingers: [Int?] {
        measures.flatMap { measure in
            measure.notes.compactMap { note in
                if case let .note(_, _, finger) = note {
                    return finger as Int?
                }
                return nil
            }
        }
    }

    var totalNotes: Int { expectedEvents.count }
}

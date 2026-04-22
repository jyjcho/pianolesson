import Foundation

enum BadgeId: String, Codable, CaseIterable {
    case streak10
    case streak25
    case streak50
    case perfectScore
    case categoryNoteId
    case categoryScalesChords
    case categoryFamousSongs
    case categoryRhythm

    var title: String {
        switch self {
        case .streak10: return "10-Day Streak"
        case .streak25: return "25-Day Streak"
        case .streak50: return "50-Day Streak"
        case .perfectScore: return "Perfect Score"
        case .categoryNoteId: return "Note ID Master"
        case .categoryScalesChords: return "Scales & Chords Master"
        case .categoryFamousSongs: return "Famous Songs Master"
        case .categoryRhythm: return "Rhythm Master"
        }
    }

    var systemImage: String {
        switch self {
        case .streak10, .streak25, .streak50: return "flame.fill"
        case .perfectScore: return "star.circle.fill"
        case .categoryNoteId, .categoryScalesChords, .categoryFamousSongs, .categoryRhythm:
            return "rosette"
        }
    }
}

enum Badges {
    static func badgeId(for category: LessonCategory) -> BadgeId {
        switch category {
        case .noteId: return .categoryNoteId
        case .scalesChords: return .categoryScalesChords
        case .famousSongs: return .categoryFamousSongs
        case .rhythm: return .categoryRhythm
        }
    }

    static func evaluate(snapshot: ProgressSnapshot, lastAccuracy: Int) -> Set<String> {
        var earned = snapshot.badges

        if snapshot.streak >= 10 { earned.insert(BadgeId.streak10.rawValue) }
        if snapshot.streak >= 25 { earned.insert(BadgeId.streak25.rawValue) }
        if snapshot.streak >= 50 { earned.insert(BadgeId.streak50.rawValue) }
        if lastAccuracy == 100 { earned.insert(BadgeId.perfectScore.rawValue) }

        for category in LessonCategory.allCases {
            let lessons = LessonRegistry.lessons(in: category)
            guard !lessons.isEmpty else { continue }
            let allComplete = lessons.allSatisfy { (snapshot.results[$0.id]?.stars ?? 0) > 0 }
            if allComplete {
                earned.insert(Self.badgeId(for: category).rawValue)
            }
        }

        return earned
    }
}

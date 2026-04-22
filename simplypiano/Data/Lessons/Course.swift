import Foundation

enum CourseLevel: String, Codable, CaseIterable, Identifiable {
    case beginner
    case intermediate
    case advanced

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .beginner: return "Beginner"
        case .intermediate: return "Intermediate"
        case .advanced: return "Advanced"
        }
    }

    var accentColorName: String {
        switch self {
        case .beginner: return "blue"
        case .intermediate: return "purple"
        case .advanced: return "orange"
        }
    }
}

struct Unit: Identifiable, Codable, Hashable {
    let id: String
    let title: String
    let summary: String
    let lessonIds: [String]
}

struct Course: Identifiable, Codable, Hashable {
    let id: String
    let level: CourseLevel
    let number: Int
    let title: String
    let summary: String
    let units: [Unit]

    var displayTitle: String { "\(level.displayName) \(number)" }
    var fullTitle: String { "\(displayTitle): \(title)" }
    var lessonIds: [String] { units.flatMap(\.lessonIds) }
}

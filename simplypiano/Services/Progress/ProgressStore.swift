import Foundation
import Observation

struct LessonResult: Codable, Equatable {
    var stars: Int
    var bestAccuracy: Int
    var completions: Int
    var lastPlayed: Date
}

struct ProgressSnapshot: Codable, Equatable {
    var results: [String: LessonResult]
    var streak: Int
    var lastCompletedDate: Date?
    var badges: Set<String>

    static let empty = ProgressSnapshot(
        results: [:],
        streak: 0,
        lastCompletedDate: nil,
        badges: []
    )
}

@Observable
@MainActor
final class ProgressStore {
    static let shared = ProgressStore()

    private(set) var snapshot: ProgressSnapshot
    private(set) var newlyEarnedBadges: [BadgeId] = []

    private let defaultsKey = "progressStore.v1"

    private var fileURL: URL {
        let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        return docs.appendingPathComponent("progress.json")
    }

    private init() {
        self.snapshot = Self.loadInitialSnapshot(defaultsKey: "progressStore.v1")
    }

    var totalLessons: Int { LessonRegistry.all.count }
    var completedLessons: Int {
        snapshot.results.values.filter { $0.stars > 0 }.count
    }
    var totalStars: Int { snapshot.results.values.reduce(0) { $0 + $1.stars } }
    var maxStars: Int { LessonRegistry.all.count * 3 }

    func result(for lessonId: String) -> LessonResult? { snapshot.results[lessonId] }
    func stars(for lessonId: String) -> Int { snapshot.results[lessonId]?.stars ?? 0 }
    func isComplete(lessonId: String) -> Bool { stars(for: lessonId) > 0 }

    func completedCount(in category: LessonCategory) -> Int {
        LessonRegistry.lessons(in: category).filter { isComplete(lessonId: $0.id) }.count
    }

    func completedCount(in course: Course) -> Int {
        course.lessonIds.filter { isComplete(lessonId: $0) }.count
    }

    func completedCount(in unit: Unit) -> Int {
        unit.lessonIds.filter { isComplete(lessonId: $0) }.count
    }

    func isCourseComplete(_ course: Course) -> Bool {
        !course.lessonIds.isEmpty && course.lessonIds.allSatisfy { isComplete(lessonId: $0) }
    }

    func isUnitComplete(_ unit: Unit) -> Bool {
        !unit.lessonIds.isEmpty && unit.lessonIds.allSatisfy { isComplete(lessonId: $0) }
    }

    func starsInUnit(_ unit: Unit) -> Int {
        unit.lessonIds.reduce(0) { $0 + stars(for: $1) }
    }

    func starsInCourse(_ course: Course) -> Int {
        course.lessonIds.reduce(0) { $0 + stars(for: $1) }
    }

    func nextLessonId() -> String? {
        if let incomplete = LessonRegistry.all.first(where: { !isComplete(lessonId: $0.id) }) {
            return incomplete.id
        }
        return LessonRegistry.all.first?.id
    }

    func record(lessonId: String, accuracy: Int) {
        let stars = Scoring.stars(accuracy: accuracy)
        let prev = snapshot.results[lessonId]
        snapshot.results[lessonId] = LessonResult(
            stars: max(stars, prev?.stars ?? 0),
            bestAccuracy: max(accuracy, prev?.bestAccuracy ?? 0),
            completions: (prev?.completions ?? 0) + 1,
            lastPlayed: Date()
        )
        updateStreak()
        awardBadges(lastAccuracy: accuracy)
        persist()
    }

    func consumeNewlyEarnedBadges() -> [BadgeId] {
        defer { newlyEarnedBadges.removeAll() }
        return newlyEarnedBadges
    }

    private func updateStreak() {
        let cal = Calendar.current
        let today = cal.startOfDay(for: Date())
        if let last = snapshot.lastCompletedDate {
            let lastDay = cal.startOfDay(for: last)
            if lastDay == today {
                // already counted
            } else if let nextDay = cal.date(byAdding: .day, value: 1, to: lastDay), nextDay == today {
                snapshot.streak += 1
            } else {
                snapshot.streak = 1
            }
        } else {
            snapshot.streak = 1
        }
        snapshot.lastCompletedDate = Date()
    }

    private func awardBadges(lastAccuracy: Int) {
        let earned = Badges.evaluate(snapshot: snapshot, lastAccuracy: lastAccuracy)
        let additions = earned.subtracting(snapshot.badges)
        guard !additions.isEmpty else { return }
        snapshot.badges.formUnion(additions)
        let decoded = additions.compactMap { BadgeId(rawValue: $0) }
        newlyEarnedBadges.append(contentsOf: decoded)
    }

    private func persist() {
        guard let data = try? JSONEncoder().encode(snapshot) else { return }
        UserDefaults.standard.set(data, forKey: defaultsKey)
        try? data.write(to: fileURL, options: .atomic)
    }

    private static func loadInitialSnapshot(defaultsKey: String) -> ProgressSnapshot {
        let decoder = JSONDecoder()
        if let data = UserDefaults.standard.data(forKey: defaultsKey),
           let decoded = try? decoder.decode(ProgressSnapshot.self, from: data) {
            return decoded
        }
        let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let url = docs.appendingPathComponent("progress.json")
        if let data = try? Data(contentsOf: url),
           let decoded = try? decoder.decode(ProgressSnapshot.self, from: data) {
            UserDefaults.standard.set(data, forKey: defaultsKey)
            return decoded
        }
        return .empty
    }
}

import Foundation

enum Scoring {
    static let passThreshold = 70

    static func accuracy(correct: Int, total: Int) -> Int {
        guard total > 0 else { return 0 }
        return Int((Double(correct) / Double(total) * 100).rounded())
    }

    static func stars(accuracy: Int) -> Int {
        switch accuracy {
        case 95...: return 3
        case 85...94: return 2
        case 70...84: return 1
        default: return 0
        }
    }

    static func didPass(accuracy: Int) -> Bool { accuracy >= passThreshold }
}

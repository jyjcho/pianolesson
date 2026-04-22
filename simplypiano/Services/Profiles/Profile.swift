import Foundation
import SwiftUI

struct Profile: Codable, Identifiable, Equatable, Hashable {
    let id: UUID
    var name: String
    var emoji: String
    var colorName: String
    var createdAt: Date

    static let emojiChoices: [String] = [
        "🎹", "🎵", "🎼", "🎶", "🐱", "🐶",
        "🦊", "🐻", "🦁", "🐼", "🐸", "🐧",
        "🦄", "🐥", "🐙", "🌟"
    ]

    static let colorChoices: [String] = [
        "blue", "purple", "pink", "green", "orange", "teal", "red", "yellow"
    ]

    var color: Color {
        switch colorName {
        case "blue": return .blue
        case "purple": return .purple
        case "pink": return .pink
        case "green": return .green
        case "orange": return .orange
        case "teal": return .teal
        case "red": return .red
        case "yellow": return .yellow
        default: return .blue
        }
    }

    static func makeNew(name: String) -> Profile {
        Profile(
            id: UUID(),
            name: name,
            emoji: emojiChoices.randomElement() ?? "🎹",
            colorName: colorChoices.randomElement() ?? "blue",
            createdAt: Date()
        )
    }
}

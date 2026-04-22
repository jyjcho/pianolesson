import Foundation
import Observation

@Observable
@MainActor
final class AppSettings {
    static let shared = AppSettings()

    private let volumeKey = "settings.volume"
    private let showLabelsKey = "settings.showNoteLabels"

    var volume: Float {
        didSet {
            UserDefaults.standard.set(volume, forKey: volumeKey)
            AudioEngine.shared.setVolume(volume)
        }
    }

    var showNoteLabels: Bool {
        didSet {
            UserDefaults.standard.set(showNoteLabels, forKey: showLabelsKey)
        }
    }

    private init() {
        let defaults = UserDefaults.standard
        let storedVolume = defaults.object(forKey: volumeKey) as? Float
        let storedLabels = defaults.object(forKey: showLabelsKey) as? Bool
        self.volume = storedVolume ?? 0.8
        self.showNoteLabels = storedLabels ?? true
        AudioEngine.shared.setVolume(self.volume)
    }
}

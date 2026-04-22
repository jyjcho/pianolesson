import Foundation
import Observation

@Observable
@MainActor
final class AppSettings {
    static let shared = AppSettings()

    private let volumeKey = "settings.volume"
    private let showLabelsKey = "settings.showNoteLabels"
    private let enforceLengthKey = "settings.enforceNoteLength"

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

    var enforceNoteLength: Bool {
        didSet {
            UserDefaults.standard.set(enforceNoteLength, forKey: enforceLengthKey)
        }
    }

    private init() {
        let defaults = UserDefaults.standard
        let storedVolume = defaults.object(forKey: volumeKey) as? Float
        let storedLabels = defaults.object(forKey: showLabelsKey) as? Bool
        let storedEnforce = defaults.object(forKey: enforceLengthKey) as? Bool
        self.volume = storedVolume ?? 0.8
        self.showNoteLabels = storedLabels ?? true
        self.enforceNoteLength = storedEnforce ?? false
        AudioEngine.shared.setVolume(self.volume)
    }
}

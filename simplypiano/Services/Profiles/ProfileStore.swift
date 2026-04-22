import Foundation
import Observation

@Observable
@MainActor
final class ProfileStore {
    static let shared = ProfileStore()

    private(set) var profiles: [Profile] = []
    private(set) var currentProfileId: UUID

    private let profilesDefaultsKey = "profiles.v1"
    private let currentIdDefaultsKey = "profiles.currentId"
    private let legacyProgressDefaultsKey = "progressStore.v1"
    private let legacyProgressFileName = "progress.json"

    var currentProfile: Profile {
        profiles.first(where: { $0.id == currentProfileId }) ?? profiles[0]
    }

    private var profilesFileURL: URL {
        Self.documentsDir.appendingPathComponent("profiles.json")
    }

    static var documentsDir: URL {
        FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    }

    private init() {
        let loaded = Self.loadProfiles(
            defaultsKey: profilesDefaultsKey,
            fileURL: Self.documentsDir.appendingPathComponent("profiles.json")
        )

        if loaded.isEmpty {
            let firstProfile = Profile.makeNew(name: "Player 1")
            self.profiles = [firstProfile]
            self.currentProfileId = firstProfile.id
            Self.migrateLegacyProgress(into: firstProfile.id)
            persist()
            UserDefaults.standard.set(firstProfile.id.uuidString, forKey: currentIdDefaultsKey)
        } else {
            self.profiles = loaded
            let storedId = (UserDefaults.standard.string(forKey: currentIdDefaultsKey))
                .flatMap { UUID(uuidString: $0) }
            self.currentProfileId = storedId.flatMap { id in
                loaded.contains(where: { $0.id == id }) ? id : nil
            } ?? loaded[0].id
        }
    }

    func addProfile(name: String) -> Profile {
        let trimmed = name.trimmingCharacters(in: .whitespacesAndNewlines)
        let finalName = trimmed.isEmpty ? "Player \(profiles.count + 1)" : trimmed
        let profile = Profile.makeNew(name: finalName)
        profiles.append(profile)
        persist()
        return profile
    }

    func updateProfile(_ profile: Profile) {
        guard let idx = profiles.firstIndex(where: { $0.id == profile.id }) else { return }
        profiles[idx] = profile
        persist()
    }

    func deleteProfile(id: UUID) {
        guard profiles.count > 1 else { return }
        guard let idx = profiles.firstIndex(where: { $0.id == id }) else { return }
        profiles.remove(at: idx)
        ProgressStore.shared.deleteStorage(for: id)
        if currentProfileId == id {
            switchTo(profiles[0].id)
        }
        persist()
    }

    func switchTo(_ id: UUID) {
        guard profiles.contains(where: { $0.id == id }) else { return }
        guard id != currentProfileId else { return }
        ProgressStore.shared.saveCurrent()
        currentProfileId = id
        UserDefaults.standard.set(id.uuidString, forKey: currentIdDefaultsKey)
        ProgressStore.shared.reloadForCurrentProfile()
    }

    private func persist() {
        guard let data = try? JSONEncoder().encode(profiles) else { return }
        UserDefaults.standard.set(data, forKey: profilesDefaultsKey)
        try? data.write(to: profilesFileURL, options: .atomic)
    }

    private static func loadProfiles(defaultsKey: String, fileURL: URL) -> [Profile] {
        let decoder = JSONDecoder()
        if let data = UserDefaults.standard.data(forKey: defaultsKey),
           let decoded = try? decoder.decode([Profile].self, from: data) {
            return decoded
        }
        if let data = try? Data(contentsOf: fileURL),
           let decoded = try? decoder.decode([Profile].self, from: data) {
            UserDefaults.standard.set(data, forKey: defaultsKey)
            return decoded
        }
        return []
    }

    private static func migrateLegacyProgress(into profileId: UUID) {
        let defaults = UserDefaults.standard
        let docs = documentsDir
        let legacyFile = docs.appendingPathComponent("progress.json")

        let legacyData = defaults.data(forKey: "progressStore.v1")
            ?? (try? Data(contentsOf: legacyFile))
        guard let data = legacyData else { return }

        defaults.set(data, forKey: "progressStore.v1.\(profileId.uuidString)")
        let targetFile = docs.appendingPathComponent("progress-\(profileId.uuidString).json")
        try? data.write(to: targetFile, options: .atomic)
    }
}

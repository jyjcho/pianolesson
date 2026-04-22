import AVFoundation
import AudioToolbox
import Observation

@Observable
@MainActor
final class AudioEngine {
    static let shared = AudioEngine()

    private(set) var isRunning = false
    private(set) var loadedSoundBank: String?
    private(set) var lastError: String?

    private let engine = AVAudioEngine()
    private let sampler = AVAudioUnitSampler()

    private init() {
        engine.attach(sampler)
        engine.connect(sampler, to: engine.mainMixerNode, format: nil)
        configureSession()
        loadBundledSoundBank()
        start()
    }

    private func configureSession() {
        let session = AVAudioSession.sharedInstance()
        do {
            try session.setCategory(.playback, mode: .default, options: [])
            try session.setActive(true)
        } catch {
            lastError = "AudioSession setup failed: \(error.localizedDescription)"
        }
    }

    private func loadBundledSoundBank() {
        let urls = Bundle.main.urls(forResourcesWithExtension: "sf2", subdirectory: nil) ?? []
        guard let url = urls.first else {
            lastError = "No SoundFont found. Drop a .sf2 into the project bundle."
            return
        }
        do {
            try sampler.loadSoundBankInstrument(
                at: url,
                program: 0,
                bankMSB: UInt8(kAUSampler_DefaultMelodicBankMSB),
                bankLSB: UInt8(kAUSampler_DefaultBankLSB)
            )
            loadedSoundBank = url.deletingPathExtension().lastPathComponent
        } catch {
            lastError = "Failed to load \(url.lastPathComponent): \(error.localizedDescription)"
        }
    }

    func start() {
        guard !engine.isRunning else { isRunning = true; return }
        do {
            try engine.start()
            isRunning = true
        } catch {
            lastError = "Engine start failed: \(error.localizedDescription)"
            isRunning = false
        }
    }

    func stop() {
        engine.stop()
        isRunning = false
    }

    func noteOn(_ midi: UInt8, velocity: UInt8 = 100) {
        sampler.startNote(midi, withVelocity: velocity, onChannel: 0)
    }

    func noteOff(_ midi: UInt8) {
        sampler.stopNote(midi, onChannel: 0)
    }

    func setVolume(_ value: Float) {
        engine.mainMixerNode.outputVolume = max(0, min(1, value))
    }
}

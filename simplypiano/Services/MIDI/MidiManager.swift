import CoreMIDI
import Foundation
import Observation

struct MidiEvent: Identifiable {
    let id = UUID()
    let timestamp: Date
    let status: UInt8
    let note: UInt8
    let velocity: UInt8

    var isNoteOn: Bool { (status & 0xF0) == 0x90 && velocity > 0 }
    var isNoteOff: Bool {
        (status & 0xF0) == 0x80 || ((status & 0xF0) == 0x90 && velocity == 0)
    }
    var noteName: String { MidiManager.noteName(for: note) }
}

@Observable
final class MidiManager {
    private(set) var sourceNames: [String] = []
    private(set) var connectedSource: String?
    private(set) var recentEvents: [MidiEvent] = []
    private(set) var lastError: String?

    var onEvent: ((MidiEvent) -> Void)?

    private var client = MIDIClientRef()
    private var inputPort = MIDIPortRef()
    private var connectedSources: Set<MIDIEndpointRef> = []

    init() {
        setupClient()
        refreshSources()
    }

    private func setupClient() {
        let clientStatus = MIDIClientCreateWithBlock(
            "simplypiano" as CFString,
            &client
        ) { [weak self] _ in
            DispatchQueue.main.async { self?.refreshSources() }
        }
        guard clientStatus == noErr else {
            lastError = "MIDIClientCreate failed: \(clientStatus)"
            return
        }

        let portStatus = MIDIInputPortCreateWithBlock(
            client,
            "Input" as CFString,
            &inputPort
        ) { [weak self] pktListPtr, _ in
            self?.handlePacketList(pktListPtr)
        }
        if portStatus != noErr {
            lastError = "MIDIInputPortCreate failed: \(portStatus)"
        }
    }

    private func handlePacketList(_ pktListPtr: UnsafePointer<MIDIPacketList>) {
        for packet in pktListPtr.unsafeSequence() {
            let length = Int(packet.pointee.length)
            guard length > 0 else { continue }
            let events = withUnsafeBytes(of: packet.pointee.data) { rawBytes -> [MidiEvent] in
                let bytes = rawBytes.prefix(length)
                var out: [MidiEvent] = []
                var i = 0
                var runningStatus: UInt8 = 0
                while i < length {
                    let b = bytes[i]
                    let status: UInt8
                    if b & 0x80 != 0 {
                        status = b
                        runningStatus = b
                        i += 1
                    } else {
                        status = runningStatus
                    }
                    let type = status & 0xF0
                    let dataLen = Self.dataByteCount(forStatus: status)
                    guard dataLen >= 0, i + dataLen <= length else { break }

                    if type == 0x90 || type == 0x80, dataLen == 2 {
                        let note = bytes[i]
                        let velocity = bytes[i + 1]
                        out.append(MidiEvent(
                            timestamp: Date(),
                            status: status,
                            note: note,
                            velocity: velocity
                        ))
                    }
                    i += dataLen
                }
                return out
            }

            guard !events.isEmpty else { continue }
            DispatchQueue.main.async { [weak self] in
                guard let self else { return }
                for event in events {
                    self.recentEvents.insert(event, at: 0)
                }
                if self.recentEvents.count > 30 {
                    self.recentEvents.removeLast(self.recentEvents.count - 30)
                }
                for event in events { self.onEvent?(event) }
            }
        }
    }

    private static func dataByteCount(forStatus status: UInt8) -> Int {
        switch status & 0xF0 {
        case 0x80, 0x90, 0xA0, 0xB0, 0xE0: return 2
        case 0xC0, 0xD0: return 1
        case 0xF0:
            switch status {
            case 0xF1, 0xF3: return 1
            case 0xF2: return 2
            default: return 0
            }
        default: return -1
        }
    }

    func refreshSources() {
        let count = MIDIGetNumberOfSources()
        var names: [String] = []
        var newSources: Set<MIDIEndpointRef> = []

        for i in 0..<count {
            let source = MIDIGetSource(i)
            guard source != 0 else { continue }
            newSources.insert(source)
            if let name = Self.displayName(for: source) {
                names.append(name)
            }
        }

        for source in newSources where !connectedSources.contains(source) {
            MIDIPortConnectSource(inputPort, source, nil)
        }
        for source in connectedSources where !newSources.contains(source) {
            MIDIPortDisconnectSource(inputPort, source)
        }

        connectedSources = newSources
        sourceNames = names
        connectedSource = names.first
    }

    private static func displayName(for obj: MIDIObjectRef) -> String? {
        var ref: Unmanaged<CFString>?
        let status = MIDIObjectGetStringProperty(obj, kMIDIPropertyDisplayName, &ref)
        guard status == noErr, let cf = ref?.takeRetainedValue() else { return nil }
        return cf as String
    }

    static func noteName(for midi: UInt8) -> String {
        let names = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"]
        let octave = Int(midi) / 12 - 1
        return "\(names[Int(midi) % 12])\(octave)"
    }
}

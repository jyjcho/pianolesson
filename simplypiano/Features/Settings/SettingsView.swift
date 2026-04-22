import SwiftUI

struct SettingsView: View {
    @State private var settings = AppSettings.shared
    @State private var bus = NoteInputBus.shared
    @State private var profileStore = ProfileStore.shared
    @State private var showingProfilePicker = false
    @State private var editingCurrentProfile = false

    var body: some View {
        NavigationStack {
            List {
                profileSection
                midiSection
                audioSection
                displaySection
                practiceSection
                developerSection
                aboutSection
            }
            .navigationTitle("Settings")
            .sheet(isPresented: $showingProfilePicker) {
                ProfilePickerView()
            }
            .sheet(isPresented: $editingCurrentProfile) {
                ProfileEditView(mode: .edit(profileStore.currentProfile))
            }
        }
    }

    private var profileSection: some View {
        Section("Profile") {
            HStack(spacing: 14) {
                ZStack {
                    Circle()
                        .fill(profileStore.currentProfile.color.opacity(0.22))
                    Text(profileStore.currentProfile.emoji)
                        .font(.system(size: 28))
                }
                .frame(width: 48, height: 48)
                VStack(alignment: .leading, spacing: 2) {
                    Text(profileStore.currentProfile.name)
                        .font(.headline)
                    Text("\(profileStore.profiles.count) profile\(profileStore.profiles.count == 1 ? "" : "s") total")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                Spacer()
                Button("Edit") { editingCurrentProfile = true }
                    .buttonStyle(.bordered)
            }
            .padding(.vertical, 4)

            Button {
                showingProfilePicker = true
            } label: {
                Label("Switch profile", systemImage: "person.2.fill")
            }
        }
    }

    private var midiSection: some View {
        Section("MIDI") {
            HStack {
                Circle()
                    .fill(bus.isMidiConnected ? Color.green : Color.gray)
                    .frame(width: 10, height: 10)
                Text(bus.connectedDeviceName ?? "No MIDI device connected")
                    .foregroundStyle(bus.isMidiConnected ? .primary : .secondary)
                Spacer()
            }
            if bus.midi.sourceNames.count > 1 {
                ForEach(bus.midi.sourceNames.dropFirst(), id: \.self) { name in
                    HStack {
                        Image(systemName: "cable.connector").foregroundStyle(.secondary)
                        Text(name).foregroundStyle(.secondary)
                    }
                }
            }
            Button {
                bus.midi.refreshSources()
            } label: {
                Label("Refresh MIDI sources", systemImage: "arrow.clockwise")
            }
        }
    }

    private var audioSection: some View {
        Section("Audio") {
            HStack {
                Image(systemName: "speaker.fill").foregroundStyle(.secondary)
                Slider(value: $settings.volume, in: 0...1)
                Image(systemName: "speaker.wave.3.fill").foregroundStyle(.secondary)
            }
            Button {
                playTestArpeggio()
            } label: {
                Label("Play test arpeggio", systemImage: "play.circle")
            }
        }
    }

    private var displaySection: some View {
        Section("Display") {
            Toggle(isOn: $settings.showNoteLabels) {
                Label("Show note labels", systemImage: "character.textbox")
            }
        }
    }

    private var practiceSection: some View {
        Section {
            Toggle(isOn: $settings.enforceNoteLength) {
                Label("Enforce note length", systemImage: "clock")
            }
        } header: {
            Text("Practice")
        } footer: {
            Text("Checks that each note is held for roughly its written duration (quarter, half, etc.) at the lesson's tempo. Retry if a note is held too briefly or too long.")
        }
    }

    private var developerSection: some View {
        Section("Developer") {
            NavigationLink {
                MidiSpikeView()
            } label: {
                Label("MIDI Diagnostic", systemImage: "waveform")
            }
            NavigationLink {
                SheetSpikeView()
            } label: {
                Label("Sheet Music Spike", systemImage: "music.note.list")
            }
        }
    }

    private var aboutSection: some View {
        Section("About") {
            HStack {
                Text("Version")
                Spacer()
                Text(versionString)
                    .foregroundStyle(.secondary)
            }
            Text("Free Xcode signing expires every 7 days. Re-run from Xcode on an expiring app to refresh.")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }

    private var versionString: String {
        let short = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "—"
        let build = Bundle.main.infoDictionary?["CFBundleVersion"] as? String ?? "—"
        return "\(short) (\(build))"
    }

    private func playTestArpeggio() {
        let notes: [UInt8] = [60, 64, 67, 72]
        let engine = AudioEngine.shared
        for (i, note) in notes.enumerated() {
            let delay = Double(i) * 0.25
            DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                engine.noteOn(note, velocity: 100)
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + delay + 0.4) {
                engine.noteOff(note)
            }
        }
    }
}

#Preview {
    SettingsView()
}

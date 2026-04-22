import SwiftUI

struct MidiSpikeView: View {
    @State private var bus = NoteInputBus.shared
    private let audio = AudioEngine.shared

    private var midi: MidiManager { bus.midi }

    var body: some View {
        NavigationStack {
            List {
                if let error = midi.lastError {
                    Section {
                        Text(error).foregroundStyle(.red)
                    } header: {
                        Text("MIDI Error")
                    }
                }

                Section {
                    HStack {
                        Image(systemName: audio.isRunning ? "speaker.wave.2.fill" : "speaker.slash")
                            .foregroundStyle(audio.isRunning ? .green : .gray)
                        Text(audio.isRunning ? "Engine running" : "Engine stopped")
                        Spacer()
                        if let bank = audio.loadedSoundBank {
                            Text(bank)
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        } else {
                            Text("No SoundFont")
                                .font(.caption)
                                .foregroundStyle(.orange)
                        }
                    }
                    if let err = audio.lastError {
                        Text(err).font(.caption).foregroundStyle(.red)
                    }
                } header: {
                    Text("Audio")
                }

                Section {
                    if midi.sourceNames.isEmpty {
                        Text("No MIDI devices detected.\nConnect your CASIO PX-150 via USB-B → USB-C.")
                            .foregroundStyle(.secondary)
                    } else {
                        ForEach(midi.sourceNames, id: \.self) { name in
                            Label(name, systemImage: "pianokeys.inverse")
                        }
                    }
                } header: {
                    HStack {
                        Text("MIDI Sources")
                        Spacer()
                        Button {
                            midi.refreshSources()
                        } label: {
                            Image(systemName: "arrow.clockwise")
                        }
                        .buttonStyle(.borderless)
                    }
                }

                Section {
                    if midi.recentEvents.isEmpty {
                        Text("Play a key on your piano…")
                            .foregroundStyle(.secondary)
                    } else {
                        ForEach(midi.recentEvents) { event in
                            HStack(spacing: 12) {
                                Image(systemName: event.isNoteOn ? "arrow.down.circle.fill" : "arrow.up.circle")
                                    .foregroundStyle(event.isNoteOn ? .green : .gray)
                                    .font(.title3)
                                Text(event.noteName)
                                    .font(.system(.body, design: .monospaced))
                                    .bold()
                                    .frame(width: 56, alignment: .leading)
                                Text("note=\(event.note)")
                                    .font(.system(.caption, design: .monospaced))
                                    .foregroundStyle(.secondary)
                                Spacer()
                                Text("vel=\(event.velocity)")
                                    .font(.system(.caption, design: .monospaced))
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                } header: {
                    Text("Recent Events")
                }
            }
            .navigationTitle("MIDI Spike")
        }
    }
}

#Preview {
    MidiSpikeView()
}

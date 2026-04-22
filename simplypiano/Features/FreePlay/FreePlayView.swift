import SwiftUI

struct FreePlayView: View {
    @State private var staff = FreePlayStaff()
    @State private var lastActiveNotes: Set<UInt8> = []
    @State private var sheetError: String?
    @State private var settings = AppSettings.shared
    @State private var bus = NoteInputBus.shared

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                SheetMusicView(
                    measures: staff.measures,
                    onError: { sheetError = $0 }
                )
                .frame(height: 200)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 4).stroke(Color(white: 0.85))
                )
                .padding(.horizontal)
                .padding(.top, 8)

                if let sheetError {
                    Text(sheetError)
                        .font(.caption)
                        .foregroundStyle(.red)
                        .lineLimit(2)
                        .padding(.horizontal)
                        .padding(.top, 4)
                }

                Spacer(minLength: 0)

                PianoKeyboard(
                    lowestMidi: 36,
                    highestMidi: 84,
                    showLabels: settings.showNoteLabels,
                    highlightedMidis: bus.activeNotes,
                    onNoteOn: { midi in bus.noteOn(midi, source: .touch) },
                    onNoteOff: { midi in bus.noteOff(midi, source: .touch) }
                )
                .frame(maxWidth: .infinity)
                .frame(height: 240)
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Free Play")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Clear") { staff.clear() }
                        .disabled(staff.measures.allSatisfy { $0.notes.isEmpty })
                }
                ToolbarItem(placement: .topBarTrailing) {
                    MidiStatusBadge()
                }
            }
            .onChange(of: bus.activeNotes) { _, new in
                let added = new.subtracting(lastActiveNotes)
                lastActiveNotes = new
                for midi in added.sorted() {
                    staff.append(midi: midi)
                }
            }
        }
    }
}

#Preview {
    FreePlayView()
}

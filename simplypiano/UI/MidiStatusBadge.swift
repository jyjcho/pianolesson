import SwiftUI

struct MidiStatusBadge: View {
    @State private var bus = NoteInputBus.shared

    var body: some View {
        HStack(spacing: 6) {
            Circle()
                .fill(bus.isMidiConnected ? Color.green : Color.gray)
                .frame(width: 8, height: 8)
            Text(bus.connectedDeviceName ?? "No MIDI")
                .font(.caption)
                .foregroundStyle(.secondary)
                .lineLimit(1)
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 4)
        .background(
            Capsule().fill(Color(.secondarySystemFill))
        )
    }
}

#Preview {
    MidiStatusBadge()
}

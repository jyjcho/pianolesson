import SwiftUI

struct ProfileEditView: View {
    enum Mode {
        case create
        case edit(Profile)
    }

    let mode: Mode

    @State private var profileStore = ProfileStore.shared
    @State private var name: String
    @State private var emoji: String
    @State private var colorName: String
    @Environment(\.dismiss) private var dismiss

    private var isEditing: Bool {
        if case .edit = mode { return true }
        return false
    }

    private var editingId: UUID? {
        if case .edit(let p) = mode { return p.id }
        return nil
    }

    init(mode: Mode) {
        self.mode = mode
        switch mode {
        case .create:
            _name = State(initialValue: "")
            _emoji = State(initialValue: Profile.emojiChoices.randomElement() ?? "🎹")
            _colorName = State(initialValue: Profile.colorChoices.randomElement() ?? "blue")
        case .edit(let profile):
            _name = State(initialValue: profile.name)
            _emoji = State(initialValue: profile.emoji)
            _colorName = State(initialValue: profile.colorName)
        }
    }

    var body: some View {
        NavigationStack {
            Form {
                Section {
                    HStack {
                        ZStack {
                            Circle()
                                .fill(previewColor.opacity(0.22))
                            Text(emoji)
                                .font(.system(size: 44))
                        }
                        .frame(width: 80, height: 80)
                        TextField("Name", text: $name)
                            .font(.title3)
                            .textInputAutocapitalization(.words)
                    }
                }

                Section("Emoji") {
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 6), spacing: 12) {
                        ForEach(Profile.emojiChoices, id: \.self) { choice in
                            Button {
                                emoji = choice
                            } label: {
                                Text(choice)
                                    .font(.system(size: 32))
                                    .frame(width: 48, height: 48)
                                    .background(
                                        Circle()
                                            .fill(emoji == choice ? previewColor.opacity(0.2) : Color.clear)
                                    )
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.vertical, 4)
                }

                Section("Color") {
                    HStack(spacing: 14) {
                        ForEach(Profile.colorChoices, id: \.self) { choice in
                            Button {
                                colorName = choice
                            } label: {
                                Circle()
                                    .fill(color(for: choice))
                                    .frame(width: 36, height: 36)
                                    .overlay(
                                        Circle()
                                            .strokeBorder(Color.primary, lineWidth: colorName == choice ? 3 : 0)
                                    )
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.vertical, 4)
                }

                if isEditing, let id = editingId, profileStore.profiles.count > 1 {
                    Section {
                        Button(role: .destructive) {
                            profileStore.deleteProfile(id: id)
                            dismiss()
                        } label: {
                            Label("Delete profile", systemImage: "trash")
                        }
                    }
                }
            }
            .navigationTitle(isEditing ? "Edit profile" : "New profile")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") { dismiss() }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        save()
                        dismiss()
                    }
                    .disabled(name.trimmingCharacters(in: .whitespaces).isEmpty)
                }
            }
        }
    }

    private var previewColor: Color { color(for: colorName) }

    private func color(for name: String) -> Color {
        Profile(id: UUID(), name: "", emoji: "", colorName: name, createdAt: Date()).color
    }

    private func save() {
        let trimmed = name.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return }
        switch mode {
        case .create:
            var profile = profileStore.addProfile(name: trimmed)
            profile.emoji = emoji
            profile.colorName = colorName
            profileStore.updateProfile(profile)
        case .edit(let original):
            var updated = original
            updated.name = trimmed
            updated.emoji = emoji
            updated.colorName = colorName
            profileStore.updateProfile(updated)
        }
    }
}

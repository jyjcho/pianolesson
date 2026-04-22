import SwiftUI

struct ProfilePickerView: View {
    @State private var profileStore = ProfileStore.shared
    @State private var progress = ProgressStore.shared
    @State private var editingProfile: Profile?
    @State private var showingAdd = false
    @Environment(\.dismiss) private var dismiss

    private let columns = [
        GridItem(.adaptive(minimum: 150), spacing: 16)
    ]

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(profileStore.profiles) { profile in
                        ProfileCard(
                            profile: profile,
                            isCurrent: profile.id == profileStore.currentProfileId,
                            completedLessons: completedCount(for: profile)
                        )
                        .onTapGesture {
                            profileStore.switchTo(profile.id)
                            dismiss()
                        }
                        .contextMenu {
                            Button {
                                editingProfile = profile
                            } label: {
                                Label("Edit", systemImage: "pencil")
                            }
                            if profileStore.profiles.count > 1 {
                                Button(role: .destructive) {
                                    profileStore.deleteProfile(id: profile.id)
                                } label: {
                                    Label("Delete", systemImage: "trash")
                                }
                            }
                        }
                    }

                    Button {
                        showingAdd = true
                    } label: {
                        VStack(spacing: 10) {
                            Image(systemName: "plus.circle.fill")
                                .font(.system(size: 44))
                                .foregroundStyle(.secondary)
                            Text("Add profile")
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 160)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .strokeBorder(
                                    style: StrokeStyle(lineWidth: 2, dash: [6, 4])
                                )
                                .foregroundStyle(.secondary)
                        )
                    }
                }
                .padding()
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Who's playing?")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") { dismiss() }
                }
            }
            .sheet(isPresented: $showingAdd) {
                ProfileEditView(mode: .create)
            }
            .sheet(item: $editingProfile) { profile in
                ProfileEditView(mode: .edit(profile))
            }
        }
    }

    private func completedCount(for profile: Profile) -> Int {
        if profile.id == profileStore.currentProfileId {
            return progress.completedLessons
        }
        let key = "progressStore.v1.\(profile.id.uuidString)"
        guard let data = UserDefaults.standard.data(forKey: key),
              let snapshot = try? JSONDecoder().decode(ProgressSnapshot.self, from: data) else {
            return 0
        }
        return snapshot.results.values.filter { $0.stars > 0 }.count
    }
}

private struct ProfileCard: View {
    let profile: Profile
    let isCurrent: Bool
    let completedLessons: Int

    var body: some View {
        VStack(spacing: 10) {
            ZStack {
                Circle()
                    .fill(profile.color.opacity(0.22))
                Text(profile.emoji)
                    .font(.system(size: 44))
            }
            .frame(width: 80, height: 80)
            .overlay(
                Circle()
                    .strokeBorder(profile.color, lineWidth: isCurrent ? 3 : 0)
            )

            Text(profile.name)
                .font(.headline)
                .lineLimit(1)

            Text("\(completedLessons) lesson\(completedLessons == 1 ? "" : "s")")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 16)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(.secondarySystemGroupedBackground))
        )
        .overlay(alignment: .topTrailing) {
            if isCurrent {
                Image(systemName: "checkmark.circle.fill")
                    .foregroundStyle(profile.color)
                    .font(.title3)
                    .padding(10)
            }
        }
    }
}

#Preview {
    ProfilePickerView()
}

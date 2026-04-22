import SwiftUI

struct HomeView: View {
    @State private var progress = ProgressStore.shared
    @State private var profileStore = ProfileStore.shared
    @State private var showingProfilePicker = false

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    progressCard
                    streakCard
                    continueCard
                    categoryBreakdown
                    badgesSection
                }
                .padding(.horizontal)
                .padding(.vertical, 16)
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("SimplyPiano")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) { profileButton }
                ToolbarItem(placement: .topBarTrailing) { MidiStatusBadge() }
            }
            .sheet(isPresented: $showingProfilePicker) {
                ProfilePickerView()
            }
            .navigationDestination(for: Course.self) { course in
                CourseDetailView(course: course)
            }
            .navigationDestination(for: String.self) { lessonId in
                if let lesson = LessonRegistry.lesson(id: lessonId) {
                    LessonPlayScreen(lesson: lesson)
                } else {
                    Text("Lesson not found")
                }
            }
        }
    }

    private var profileButton: some View {
        Button {
            showingProfilePicker = true
        } label: {
            HStack(spacing: 6) {
                ZStack {
                    Circle()
                        .fill(profileStore.currentProfile.color.opacity(0.22))
                    Text(profileStore.currentProfile.emoji)
                        .font(.system(size: 18))
                }
                .frame(width: 32, height: 32)
                Text(profileStore.currentProfile.name)
                    .font(.subheadline.weight(.medium))
                    .foregroundStyle(.primary)
            }
        }
    }

    private var progressCard: some View {
        HStack(spacing: 20) {
            ProgressRing(
                completed: progress.completedLessons,
                total: progress.totalLessons
            )
            .frame(width: 92, height: 92)

            VStack(alignment: .leading, spacing: 4) {
                Text("\(progress.completedLessons) / \(progress.totalLessons)")
                    .font(.title.bold())
                Text("Lessons complete")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                HStack(spacing: 4) {
                    Image(systemName: "star.fill").foregroundStyle(.yellow)
                    Text("\(progress.totalStars) / \(progress.maxStars) stars")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                .padding(.top, 2)
            }
            Spacer()
        }
        .padding(18)
        .background(cardBackground)
    }

    private var streakCard: some View {
        HStack(spacing: 16) {
            Image(systemName: "flame.fill")
                .font(.system(size: 36))
                .foregroundStyle(progress.snapshot.streak > 0 ? .orange : Color(white: 0.75))
            VStack(alignment: .leading, spacing: 2) {
                Text("\(progress.snapshot.streak) day\(progress.snapshot.streak == 1 ? "" : "s")")
                    .font(.title2.bold())
                Text(streakSubtitle)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            Spacer()
        }
        .padding(18)
        .background(cardBackground)
    }

    private var continueCard: some View {
        Group {
            if let nextId = progress.nextLessonId(),
               let lesson = LessonRegistry.lesson(id: nextId) {
                NavigationLink(value: lesson.id) {
                    HStack(spacing: 14) {
                        Image(systemName: "play.circle.fill")
                            .font(.system(size: 36))
                            .foregroundStyle(.blue)
                        VStack(alignment: .leading, spacing: 2) {
                            Text(continueTitle)
                                .font(.caption)
                                .foregroundStyle(.secondary)
                            Text(lesson.title)
                                .font(.headline)
                                .foregroundStyle(.primary)
                            Text(continueSubtitle(for: lesson))
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.secondary)
                    }
                    .padding(18)
                    .background(cardBackground)
                }
                .buttonStyle(.plain)
            }
        }
    }

    private func continueSubtitle(for lesson: Lesson) -> String {
        if let info = LessonRegistry.unit(containing: lesson.id) {
            return "\(info.course.displayTitle) · \(info.unit.title)"
        }
        return lesson.category.displayName
    }

    private var categoryBreakdown: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Courses")
                .font(.headline)
                .padding(.horizontal, 4)
            VStack(spacing: 0) {
                ForEach(Array(CourseRegistry.all.enumerated()), id: \.element.id) { idx, course in
                    let total = course.lessonIds.count
                    let done = progress.completedCount(in: course)
                    NavigationLink(value: course) {
                        HStack(spacing: 10) {
                            Text(course.displayTitle)
                                .font(.caption.bold())
                                .foregroundStyle(accentColor(for: course.level))
                                .frame(width: 96, alignment: .leading)
                            Text(course.title)
                                .font(.subheadline)
                                .foregroundStyle(.primary)
                                .lineLimit(1)
                            Spacer()
                            Text("\(done) / \(total)")
                                .font(.subheadline.monospacedDigit())
                                .foregroundStyle(done == total ? .green : .secondary)
                            Image(systemName: "chevron.right")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                        .padding(.horizontal, 16)
                        .padding(.vertical, 12)
                    }
                    .buttonStyle(.plain)
                    if idx < CourseRegistry.all.count - 1 {
                        Divider().padding(.leading, 16)
                    }
                }
            }
            .background(cardBackground)
        }
    }

    private func accentColor(for level: CourseLevel) -> Color {
        switch level {
        case .beginner: return .blue
        case .intermediate: return .purple
        case .advanced: return .orange
        }
    }

    @ViewBuilder
    private var badgesSection: some View {
        if !progress.snapshot.badges.isEmpty {
            VStack(alignment: .leading, spacing: 10) {
                Text("Badges")
                    .font(.headline)
                    .padding(.horizontal, 4)
                let earned = progress.snapshot.badges.compactMap { BadgeId(rawValue: $0) }
                HStack(spacing: 14) {
                    ForEach(earned, id: \.self) { badge in
                        VStack(spacing: 4) {
                            Image(systemName: badge.systemImage)
                                .font(.system(size: 26))
                                .foregroundStyle(.orange)
                            Text(badge.title)
                                .font(.caption2)
                                .multilineTextAlignment(.center)
                                .lineLimit(2)
                        }
                        .frame(maxWidth: .infinity)
                    }
                }
                .padding(16)
                .background(cardBackground)
            }
        }
    }

    private var streakSubtitle: String {
        if progress.snapshot.streak == 0 { return "Play a lesson to start a streak" }
        return "Keep it going — play today"
    }

    private var continueTitle: String {
        progress.completedLessons == 0 ? "Start your first lesson" : "Continue"
    }

    private var cardBackground: some View {
        RoundedRectangle(cornerRadius: 14)
            .fill(Color(.secondarySystemGroupedBackground))
            .overlay(
                RoundedRectangle(cornerRadius: 14).stroke(Color(.separator))
            )
    }
}

private struct ProgressRing: View {
    let completed: Int
    let total: Int

    private var fraction: Double {
        guard total > 0 else { return 0 }
        return Double(completed) / Double(total)
    }

    var body: some View {
        ZStack {
            Circle()
                .stroke(Color(.separator), lineWidth: 10)
            Circle()
                .trim(from: 0, to: fraction)
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round))
                .rotationEffect(.degrees(-90))
            Text("\(Int((fraction * 100).rounded()))%")
                .font(.headline.monospacedDigit())
        }
    }
}

#Preview {
    HomeView()
}

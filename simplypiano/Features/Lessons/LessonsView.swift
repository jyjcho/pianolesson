import SwiftUI

struct LessonsView: View {
    @State private var progress = ProgressStore.shared

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 28) {
                    ForEach(CourseLevel.allCases) { level in
                        levelSection(level)
                    }
                }
                .padding(.horizontal)
                .padding(.vertical, 16)
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Lessons")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) { MidiStatusBadge() }
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

    private func levelSection(_ level: CourseLevel) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(level.displayName)
                .font(.title2.bold())
                .padding(.horizontal, 4)

            VStack(spacing: 12) {
                ForEach(CourseRegistry.all.filter { $0.level == level }) { course in
                    NavigationLink(value: course) {
                        CourseCard(course: course, progress: progress)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
}

private struct CourseCard: View {
    let course: Course
    let progress: ProgressStore

    private var done: Int { progress.completedCount(in: course) }
    private var total: Int { course.lessonIds.count }
    private var fraction: Double {
        total == 0 ? 0 : Double(done) / Double(total)
    }

    var body: some View {
        HStack(spacing: 16) {
            ZStack {
                Circle()
                    .stroke(Color(.separator), lineWidth: 6)
                Circle()
                    .trim(from: 0, to: fraction)
                    .stroke(accentColor, style: StrokeStyle(lineWidth: 6, lineCap: .round))
                    .rotationEffect(.degrees(-90))
                Text("\(course.number)")
                    .font(.title2.bold())
                    .foregroundStyle(accentColor)
            }
            .frame(width: 56, height: 56)

            VStack(alignment: .leading, spacing: 4) {
                Text(course.displayTitle)
                    .font(.caption.bold())
                    .foregroundStyle(accentColor)
                Text(course.title)
                    .font(.headline)
                    .foregroundStyle(.primary)
                Text(course.summary)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
                HStack(spacing: 8) {
                    Text("\(done) / \(total) lessons")
                        .font(.caption.monospacedDigit())
                        .foregroundStyle(.secondary)
                    if done == total && total > 0 {
                        Image(systemName: "checkmark.seal.fill")
                            .font(.caption)
                            .foregroundStyle(.green)
                    }
                }
                .padding(.top, 2)
            }
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundStyle(.secondary)
        }
        .padding(16)
        .background(
            RoundedRectangle(cornerRadius: 16).fill(Color(.secondarySystemGroupedBackground))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 16).stroke(Color(.separator))
        )
    }

    private var accentColor: Color {
        switch course.level {
        case .beginner: return .blue
        case .intermediate: return .purple
        case .advanced: return .orange
        }
    }
}

struct CourseDetailView: View {
    let course: Course
    @State private var progress = ProgressStore.shared

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                header
                ForEach(Array(course.units.enumerated()), id: \.element.id) { idx, unit in
                    UnitSection(
                        number: idx + 1,
                        unit: unit,
                        progress: progress,
                        accentColor: accentColor
                    )
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 16)
        }
        .background(Color(.systemGroupedBackground))
        .navigationTitle(course.displayTitle)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) { MidiStatusBadge() }
        }
    }

    private var header: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(course.title)
                .font(.largeTitle.bold())
            Text(course.summary)
                .font(.body)
                .foregroundStyle(.secondary)
            HStack(spacing: 12) {
                Label("\(progress.completedCount(in: course)) / \(course.lessonIds.count)", systemImage: "checkmark.circle.fill")
                    .font(.caption.monospacedDigit())
                Label("\(progress.starsInCourse(course)) stars", systemImage: "star.fill")
                    .font(.caption.monospacedDigit())
                    .foregroundStyle(.yellow)
            }
            .foregroundStyle(.secondary)
            .padding(.top, 4)
        }
    }

    private var accentColor: Color {
        switch course.level {
        case .beginner: return .blue
        case .intermediate: return .purple
        case .advanced: return .orange
        }
    }
}

private struct UnitSection: View {
    let number: Int
    let unit: Unit
    let progress: ProgressStore
    let accentColor: Color

    private var lessons: [Lesson] {
        unit.lessonIds.compactMap { LessonRegistry.lesson(id: $0) }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(alignment: .firstTextBaseline) {
                VStack(alignment: .leading, spacing: 2) {
                    Text("Unit \(number)")
                        .font(.caption.bold())
                        .foregroundStyle(accentColor)
                    Text(unit.title)
                        .font(.title3.bold())
                }
                Spacer()
                Text("\(progress.completedCount(in: unit)) / \(unit.lessonIds.count)")
                    .font(.subheadline.monospacedDigit())
                    .foregroundStyle(progress.isUnitComplete(unit) ? .green : .secondary)
            }
            Text(unit.summary)
                .font(.subheadline)
                .foregroundStyle(.secondary)

            VStack(spacing: 10) {
                ForEach(lessons) { lesson in
                    NavigationLink(value: lesson.id) {
                        LessonRow(
                            lesson: lesson,
                            stars: progress.stars(for: lesson.id)
                        )
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
}

private struct LessonRow: View {
    let lesson: Lesson
    let stars: Int

    var body: some View {
        HStack(spacing: 14) {
            Image(systemName: stars > 0 ? "checkmark.circle.fill" : "circle")
                .font(.title3)
                .foregroundStyle(stars > 0 ? .green : Color(.separator))

            VStack(alignment: .leading, spacing: 2) {
                Text(lesson.title)
                    .font(.headline)
                    .foregroundStyle(.primary)
                Text(lesson.summary)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
            }
            Spacer()
            VStack(alignment: .trailing, spacing: 4) {
                HStack(spacing: 2) {
                    ForEach(0..<3, id: \.self) { idx in
                        Image(systemName: idx < stars ? "star.fill" : "star")
                            .font(.caption2)
                            .foregroundStyle(idx < stars ? .yellow : Color(white: 0.75))
                    }
                }
                Text("\(lesson.totalNotes) notes")
                    .font(.caption2)
                    .foregroundStyle(.secondary)
            }
        }
        .padding(14)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: 12).fill(Color(.secondarySystemGroupedBackground))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 12).stroke(Color(.separator))
        )
    }
}

#Preview {
    LessonsView()
}

import SwiftUI

struct ScoreCard: View {
    let lesson: Lesson
    let accuracy: Int
    let stars: Int
    let newBadges: [BadgeId]
    var onRetry: () -> Void
    var onExit: () -> Void

    var body: some View {
        VStack(spacing: 24) {
            VStack(spacing: 8) {
                Text(Scoring.didPass(accuracy: accuracy) ? "Lesson Complete!" : "Keep Practicing")
                    .font(.largeTitle.bold())
                Text(lesson.title)
                    .font(.title3)
                    .foregroundStyle(.secondary)
            }

            HStack(spacing: 12) {
                ForEach(0..<3, id: \.self) { idx in
                    Image(systemName: idx < stars ? "star.fill" : "star")
                        .font(.system(size: 44))
                        .foregroundStyle(idx < stars ? .yellow : Color(white: 0.8))
                }
            }

            VStack(spacing: 4) {
                Text("\(accuracy)%")
                    .font(.system(size: 56, weight: .bold, design: .rounded))
                Text("Accuracy")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            if !newBadges.isEmpty {
                VStack(spacing: 8) {
                    Text("New Badges")
                        .font(.headline)
                    HStack(spacing: 16) {
                        ForEach(newBadges, id: \.self) { badge in
                            VStack(spacing: 4) {
                                Image(systemName: badge.systemImage)
                                    .font(.system(size: 28))
                                    .foregroundStyle(.orange)
                                Text(badge.title)
                                    .font(.caption2)
                                    .multilineTextAlignment(.center)
                            }
                            .frame(width: 100)
                        }
                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 12).fill(Color(.secondarySystemGroupedBackground)))
            }

            HStack(spacing: 16) {
                Button(action: onRetry) {
                    Text("Retry")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 14)
                }
                .buttonStyle(.bordered)

                Button(action: onExit) {
                    Text("Done")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 14)
                }
                .buttonStyle(.borderedProminent)
            }
            .padding(.horizontal)
        }
        .padding(32)
        .frame(maxWidth: 500)
    }
}

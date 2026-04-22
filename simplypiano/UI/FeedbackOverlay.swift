import SwiftUI

struct FeedbackOverlay: View {
    let phase: LessonPhase

    var body: some View {
        ZStack {
            if case let .feedback(correct) = phase {
                RoundedRectangle(cornerRadius: 16)
                    .fill((correct ? Color.green : Color.red).opacity(0.18))
                    .overlay(
                        Image(systemName: correct ? "checkmark.circle.fill" : "xmark.circle.fill")
                            .font(.system(size: 48, weight: .bold))
                            .foregroundStyle(correct ? .green : .red)
                    )
                    .transition(.opacity.combined(with: .scale))
            }
        }
        .animation(.easeOut(duration: 0.2), value: phase)
        .allowsHitTesting(false)
    }
}

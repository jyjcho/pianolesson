import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("Home", systemImage: "house") }

            LessonsView()
                .tabItem { Label("Lessons", systemImage: "book") }

            FreePlayView()
                .tabItem { Label("Free Play", systemImage: "pianokeys") }

            SettingsView()
                .tabItem { Label("Settings", systemImage: "gearshape") }
        }
    }
}

#Preview {
    RootTabView()
}

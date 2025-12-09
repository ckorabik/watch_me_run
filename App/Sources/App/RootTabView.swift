import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            UpcomingEventsView()
                .tabItem {
                    Label("Events", systemImage: "calendar")
                }

            FeaturedAthletesView()
                .tabItem {
                    Label("Athletes", systemImage: "star")
                }
        }
    }
}

#Preview {
    RootTabView()
}


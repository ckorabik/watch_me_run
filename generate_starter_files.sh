#!/bin/bash

set -e

create_file_if_missing() {
  if [ ! -f "$1" ]; then
    echo "📝 Creating $1"
    echo "$2" > "$1"
  else
    echo "⚠️ Skipping $1 (already exists)"
  fi
}

# ------------------------
# Home View
# ------------------------
create_file_if_missing App/Sources/Features/Home/HomeView.swift \
'import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Text("Watch Me Run")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Track athletes. Discover events. Follow the action.")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
}
'

# ------------------------
# Upcoming Events View
# ------------------------
create_file_if_missing App/Sources/Features/UpcomingEvents/UpcomingEventsView.swift \
'import SwiftUI

struct UpcomingEventsView: View {
    var body: some View {
        NavigationStack {
            List {
                Text("Chicago Marathon")
                Text("Boston Marathon")
                Text("USATF Nationals")
            }
            .navigationTitle("Upcoming Events")
        }
    }
}

#Preview {
    UpcomingEventsView()
}
'

# ------------------------
# Featured Athletes View
# ------------------------
create_file_if_missing App/Sources/Features/FeaturedAthletes/FeaturedAthletesView.swift \
'import SwiftUI

struct FeaturedAthletesView: View {
    var body: some View {
        NavigationStack {
            List {
                Text("Athlete One")
                Text("Athlete Two")
                Text("Athlete Three")
            }
            .navigationTitle("Featured Athletes")
        }
    }
}

#Preview {
    FeaturedAthletesView()
}
'

# ------------------------
# Root Tab View
# ------------------------
create_file_if_missing App/Sources/App/RootTabView.swift \
'import SwiftUI

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
'

# ------------------------
# App Entry Point
# ------------------------
create_file_if_missing App/Sources/App/WatchMeRunApp.swift \
'import SwiftUI

@main
struct WatchMeRunApp: App {
    var body: some Scene {
        WindowGroup {
            RootTabView()
        }
    }
}
'

echo "✅ Starter Swift files generated."


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

echo "🚀 Generating starter files for WatchMeRun..."

# ======================
# App / Core
# ======================
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

create_file_if_missing App/Sources/App/RootTabView.swift \
'import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("Home", systemImage: "house") }

            UpcomingEventsView()
                .tabItem { Label("Events", systemImage: "calendar") }

            FeaturedAthletesView()
                .tabItem { Label("Athletes", systemImage: "star") }
        }
    }
}
'

# ======================
# Features
# ======================
create_file_if_missing App/Sources/Features/Home/HomeView.swift \
'import SwiftUI

struct HomeView: View {
    var body: some View {
        Text("Watch Me Run")
            .font(.largeTitle)
            .padding()
    }
}
'

create_file_if_missing App/Sources/Features/UpcomingEvents/UpcomingEventsView.swift \
'import SwiftUI

struct UpcomingEventsView: View {
    var body: some View {
        Text("Upcoming Events")
            .font(.title)
            .padding()
    }
}
'

create_file_if_missing App/Sources/Features/FeaturedAthletes/FeaturedAthletesView.swift \
'import SwiftUI

struct FeaturedAthletesView: View {
    var body: some View {
        Text("Featured Athletes")
            .font(.title)
            .padding()
    }
}
'

# ======================
# Shared
# ======================
create_file_if_missing App/Sources/Shared/Components/PrimaryButton.swift \
'import SwiftUI

struct PrimaryButton: View {
    let title: String

    var body: some View {
        Button(title) {}
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}
'

create_file_if_missing App/Sources/Shared/Styles/AppColors.swift \
'import SwiftUI

enum AppColors {
    static let primary = Color.blue
}
'

create_file_if_missing App/Sources/Shared/Extensions/String+Extensions.swift \
'import Foundation

extension String {
    var isNotEmpty: Bool {
        !self.isEmpty
    }
}
'

# ======================
# Services
# ======================
create_file_if_missing App/Sources/Services/API/APIClient.swift \
'import Foundation

final class APIClient {
    static let shared = APIClient()
    private init() {}

    func fetch() {
        // Networking stub
    }
}
'

create_file_if_missing App/Sources/Services/Persistence/UserStore.swift \
'import Foundation

final class UserStore {
    func save() {
        // Persistence stub
    }
}
'

create_file_if_missing App/Sources/Services/Analytics/AnalyticsService.swift \
'import Foundation

enum AnalyticsService {
    static func track(_ event: String) {
        // Analytics stub
    }
}
'

# ======================
# Resources
# ======================
create_file_if_missing App/Sources/Resources/README.md \
'# Resources

Assets, localized strings, and other bundled resources live here.
'

# ======================
# Supporting Files
# ======================
create_file_if_missing App/SupportingFiles/README.md \
'# Supporting Files

Config files, plists, and environment-specific files.
'

# ======================
# Tests
# ======================
create_file_if_missing Tests/UnitTests/HomeViewModelTests.swift \
'import XCTest
@testable import WatchMeRun

final class HomeViewModelTests: XCTestCase {
    func testExample() {
        XCTAssertTrue(true)
    }
}
'

create_file_if_missing Tests/UITests/WatchMeRunUITests.swift \
'import XCTest

final class WatchMeRunUITests: XCTestCase {
    func testLaunch() {
        XCTAssertTrue(true)
    }
}
'

# ======================
# Tooling & Docs
# ======================
create_file_if_missing Scripts/README.md \
'# Scripts

Helper scripts for development and CI.
'

create_file_if_missing Docs/architecture.md \
'# Architecture

High-level app architecture and design decisions.
'

# ======================
# GitHub
# ======================
create_file_if_missing .github/workflows/README.md \
'# GitHub Workflows

CI/CD workflows live here.
'

echo "✅ All starter files generated successfully."


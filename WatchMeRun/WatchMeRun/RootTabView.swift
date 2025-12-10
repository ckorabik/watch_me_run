//
//  RootTabView.swift
//  WatchMeRun
//
//  Created by Christopher Korabik on 12/9/25.
//

import SwiftUI

struct RootTabView: View {

    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }

            UpcomingEventsView()
                .tabItem {
                    Label("Events", systemImage: "calendar")
                }

            FeaturedAthletesView()
                .tabItem {
                    Label("Athletes", systemImage: "star.fill")
                }
        }
        .background(AppTheme.background)
    }
}

#Preview {
    RootTabView()
}

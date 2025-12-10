//
//  HomeView.swift
//  WatchMeRun
//
//  Created by Christopher Korabik on 12/9/25.
//

import SwiftUI

struct HomeView: View {

    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {

                VStack(spacing: 8) {
                    Text("Watch Me Run")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(AppTheme.textPrimary)

                    Text("Follow athletes. Track races. Feel the momentum.")
                        .font(.subheadline)
                        .foregroundColor(AppTheme.textSecondary)
                        .multilineTextAlignment(.center)
                }

                Divider()
                    .background(AppTheme.textSecondary.opacity(0.4))

                VStack(spacing: 16) {
                    HomeCard(title: "Upcoming Events", icon: "calendar")
                    HomeCard(title: "Featured Athletes", icon: "star.fill")
                }

                Spacer()
            }
            .padding()
            .background(AppTheme.background)
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

private struct HomeCard: View {
    let title: String
    let icon: String

    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(AppTheme.turquoise)

            Text(title)
                .font(.headline)
                .foregroundColor(AppTheme.textPrimary)

            Spacer()

            Image(systemName: "chevron.right")
                .foregroundColor(AppTheme.textSecondary)
        }
        .padding()
        .background(AppTheme.cardBackground)
        .cornerRadius(12)
    }
}

#Preview {
    HomeView()
}

//
//  UpcomingEventsView.swift
//  WatchMeRun
//
//  Created by Christopher Korabik on 12/9/25.
//

import SwiftUI

struct UpcomingEventsView: View {

    var body: some View {
        NavigationStack {
            List {
                EventRow(name: "Chicago Marathon", date: "Oct 12, 2025")
                EventRow(name: "Boston Marathon", date: "Apr 21, 2026")
                EventRow(name: "USATF Nationals", date: "Jul 3, 2026")
            }
            .listStyle(.plain)
            .background(AppTheme.background)
            .navigationTitle("Events")
        }
    }
}

private struct EventRow: View {
    let name: String
    let date: String

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(name)
                    .font(.headline)
                    .foregroundColor(AppTheme.textPrimary)

                Text(date)
                    .font(.caption)
                    .foregroundColor(AppTheme.textSecondary)
            }

            Spacer()

            Image(systemName: "flag.checkered")
                .foregroundColor(AppTheme.turquoise)
        }
        .padding(.vertical, 8)
        .listRowBackground(AppTheme.cardBackground)
    }
}

#Preview {
    UpcomingEventsView()
}

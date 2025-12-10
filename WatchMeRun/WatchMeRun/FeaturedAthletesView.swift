import SwiftUI

struct FeaturedAthletesView: View {

    private let athletes = Athlete.sampleAthletes

    var body: some View {
        NavigationStack {
            List {
                ForEach(athletes) { athlete in
                    NavigationLink {
                        AthleteDetailView(athlete: athlete)
                    } label: {
                        AthleteRow(name: athlete.name, specialty: athlete.specialty)
                    }
                    .listRowBackground(AppTheme.cardBackground) // row background
                }
            }
            .listStyle(.plain)
            .scrollContentBackground(.hidden)          // hide default list bg
            .background(AppTheme.background)           // screen background
            .navigationTitle("Athletes")
        }
        .background(AppTheme.background)               // just to be safe
    }
}

private struct AthleteRow: View {
    let name: String
    let specialty: String

    var body: some View {
        HStack(spacing: 16) {
            Circle()
                .fill(AppTheme.turquoise)
                .frame(width: 36, height: 36)
                .overlay(
                    Image(systemName: "figure.run")
                        .foregroundColor(.black)
                )

            VStack(alignment: .leading, spacing: 4) {
                Text(name)
                    .font(.headline)
                    .foregroundColor(AppTheme.textPrimary)

                Text(specialty)
                    .font(.caption)
                    .foregroundColor(AppTheme.textSecondary)
            }

            Spacer()
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    FeaturedAthletesView()
}

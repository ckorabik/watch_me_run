import SwiftUI

struct AthleteDetailView: View {
    let athlete: Athlete

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {

                // Header
                HStack(spacing: 16) {
                    Circle()
                        .fill(AppTheme.turquoise)
                        .frame(width: 60, height: 60)
                        .overlay(
                            Image(systemName: "figure.run")
                                .font(.title)
                                .foregroundColor(.black)
                        )

                    VStack(alignment: .leading, spacing: 4) {
                        Text(athlete.name)
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(AppTheme.textPrimary)

                        Text(athlete.specialty)
                            .font(.subheadline)
                            .foregroundColor(AppTheme.textSecondary)
                    }
                }

                // Bio
                VStack(alignment: .leading, spacing: 8) {
                    Text("Bio")
                        .font(.headline)
                        .foregroundColor(AppTheme.textPrimary)

                    Text(athlete.bio)
                        .font(.body)
                        .foregroundColor(AppTheme.textSecondary)
                }

                // Upcoming races
                VStack(alignment: .leading, spacing: 8) {
                    Text("Upcoming Races")
                        .font(.headline)
                        .foregroundColor(AppTheme.textPrimary)

                    if athlete.upcomingRaces.isEmpty {
                        Text("No races currently scheduled.")
                            .font(.subheadline)
                            .foregroundColor(AppTheme.textSecondary)
                    } else {
                        ForEach(athlete.upcomingRaces, id: \.self) { race in
                            HStack {
                                Image(systemName: "flag.checkered")
                                    .foregroundColor(AppTheme.turquoise)
                                Text(race)
                                    .foregroundColor(AppTheme.textPrimary)
                            }
                        }
                    }
                }

                Spacer()
            }
            .padding()
        }
        .background(AppTheme.background.ignoresSafeArea())
        .navigationTitle(athlete.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AthleteDetailView(athlete: Athlete.sampleAthletes[0])
}


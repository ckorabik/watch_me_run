import Foundation

struct Athlete: Identifiable {
    let id = UUID()
    let name: String
    let specialty: String
    let bio: String
    let upcomingRaces: [String]
}

extension Athlete {
    static let sampleAthletes: [Athlete] = [
        Athlete(
            name: "Jakob Ingebrigtsen",
            specialty: "1500m",
            bio: "Norwegian middle-distance star known for his dominance in the 1500m and strong range from 800m to 5,000m.",
            upcomingRaces: [
                "Diamond League 1500m",
                "European Championships 1500m"
            ]
        ),
        Athlete(
            name: "Grant Fisher",
            specialty: "5000m",
            bio: "American distance runner with world-class performances in the 5,000m and 10,000m on the track.",
            upcomingRaces: [
                "US Trials 5000m",
                "Diamond League 5000m"
            ]
        ),
        Athlete(
            name: "Sydney McLaughlin-Levrone",
            specialty: "400m Hurdles",
            bio: "World record holder and Olympic champion in the 400m hurdles, known for flawless rhythm and top-end speed.",
            upcomingRaces: [
                "World Championships 400mH"
            ]
        )
    ]
}

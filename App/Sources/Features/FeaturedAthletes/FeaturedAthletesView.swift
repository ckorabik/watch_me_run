import SwiftUI

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


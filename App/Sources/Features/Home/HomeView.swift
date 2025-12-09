import SwiftUI

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


import SwiftUI

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


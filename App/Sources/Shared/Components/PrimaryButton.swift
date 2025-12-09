import SwiftUI

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


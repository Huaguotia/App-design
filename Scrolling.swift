import SwiftUI

struct Scrolling: View {
    let placeNames = ["Bangkok", "Egypt", "New York", "Shanghai", "Tokyo", "London", "Paris", "Netherlands", "Iceland"]
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                ForEach(placeNames, id: \.self) { image in
                    ScrollImage(image: image)
                }
            }
            .padding()
            .padding(.horizontal, 10)
        }
    }
}

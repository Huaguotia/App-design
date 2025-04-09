import SwiftUI

struct ScrollImage: View {
    let image: String
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .clipShape(.rect(cornerRadius: 10))
            .scrollTransition { content, phase in
                content
                    .scaleEffect(phase.isIdentity ? 1 : 0.4)
                    .opacity(phase.isIdentity ? 1 : 0.3)
            }
    }
}

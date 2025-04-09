import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Places", systemImage: "photo.badge.magnifyingglass.fill") {
                PlaceList()
            }
            Tab("Rate", systemImage: "chart.line.uptrend.xyaxis") {
                YearlyPlaceRateView()
            }
        }
        .accentColor(Color.blue)
        .preferredColorScheme(.dark)
    }
}

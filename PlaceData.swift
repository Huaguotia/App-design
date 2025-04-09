import SwiftUI
import CoreLocation
import SwiftData

@Model
class PlaceData {
    #Unique<PlaceData>([\.name, \.latitude, \.longitude])
    var name: String
    var latitude: Double
    var longitude: Double
    var interested: Bool
    var peopleLiked: Int

    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }

    var image: Image {
        Image(name)
    }

    init(name: String, latitude: Double, longitude: Double, interested: Bool, peopleLiked: Int) {
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
        self.interested = interested
        self.peopleLiked = peopleLiked
    }

    static var previewPlaces: [PlaceData] {
        [
            PlaceData(name: "Bangkok", latitude: 13.7563, longitude: 100.5018, interested: true, peopleLiked: 100),
            PlaceData(name: "Egypt", latitude: 30.0444, longitude: 31.2357, interested: true, peopleLiked: 432),
            PlaceData(name: "Iceland", latitude: 64.1466, longitude: -21.9426, interested: true, peopleLiked: 999),
            PlaceData(name: "London", latitude: 51.5074, longitude: -0.1278, interested: false, peopleLiked: 322),
            PlaceData(name: "Netherlands", latitude: 52.3676, longitude: 4.9041, interested: true, peopleLiked: 564),
            PlaceData(name:"New York", latitude: 40.8566, longitude: 2.3522, interested: false, peopleLiked: 333),
            PlaceData(name: "Paris", latitude: 48.8566, longitude: -74.0060, interested: false, peopleLiked: 212),
            PlaceData(name: "Shanghai", latitude: 31.2304, longitude: 121.4737, interested: true, peopleLiked: 128),
            PlaceData(name: "Tokyo", latitude: 35.6762, longitude: 139.6503, interested: false, peopleLiked: 112)
        ]
    }

    @MainActor
    static var preview: ModelContainer {
        let container = try! ModelContainer(for: PlaceData.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        for place in previewPlaces {
            container.mainContext.insert(place)
        }
        return container
    }
}

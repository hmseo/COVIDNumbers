//
//  CountryMapView.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 6/11/22.
//

import SwiftUI
import MapKit

struct CountryMapView: View {
    let country: Country
    let locations: [Location]

    @State private var region: MKCoordinateRegion

    init(country: Country) {
        self.country = country

        let meters: Double = 1_500_000
        let coordinate = CLLocationCoordinate2D(
            latitude: country.countryInfo.lat,
            longitude: country.countryInfo.long
        )

        locations = [Location(coordinate: coordinate)]

        _region = State(
            initialValue: MKCoordinateRegion(
                center: coordinate,
                latitudinalMeters: meters,
                longitudinalMeters: meters
            )
        )
    }

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations) { location in
            MapMarker(coordinate: location.coordinate)
        }
    }
}

extension CountryMapView {
    struct Location: Identifiable {
        let id = UUID()
        let coordinate: CLLocationCoordinate2D
    }
}

struct CountryMapView_Previews: PreviewProvider {
    static var previews: some View {
        CountryMapView(country: .example)
            .frame(height: 200)
    }
}

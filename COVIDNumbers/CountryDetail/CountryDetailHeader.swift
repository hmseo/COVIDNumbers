//
//  CountryDetailHeader.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 6/25/22.
//

import SwiftUI

struct CountryDetailHeader: View {
    let country: Country
    let geometry: GeometryProxy

    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                CountryMapView(country: country)

                AsyncImage(url: URL(string: country.countryInfo.flag)) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFit()
                    default:
                        Image(systemName: "flag")
                    }
                }
                .frame(maxWidth: geometry.size.width / 5)
                .padding(24)
                .shadow(radius: 4)
            }
            .frame(height: geometry.size.height / 4)

            HStack(alignment: .bottom) {
                Text(country.country)
                    .font(.largeTitle)
                    .bold()

                Spacer()

                VStack(alignment: .trailing) {
                    Text(country.continent)
                        .font(.headline)
                    Label("\(country.population)", systemImage: "person.3")

                }
                .foregroundColor(.secondary)
            }
            .padding()
        }
    }
}

struct CountryDetailHeader_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            CountryDetailHeader(country: .example, geometry: geometry)
        }
    }
}

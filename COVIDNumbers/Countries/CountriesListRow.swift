//
//  CountriesListRow.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 3/8/22.
//

import SwiftUI

struct CountriesListRow: View {
    let name: String
    let continent: String
    let population: Int
    let url: String

    var body: some View {
        HStack(spacing: 12) {
            AsyncImage(url: URL(string: url)) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                Color.secondary.opacity(0.5)
            }
            .frame(width: 70, height: 50)
            .cornerRadius(8)
            .shadow(radius: 4)

            VStack(alignment: .leading, spacing: 8) {
                Text(name)
                    .font(.headline)

                Label(continent, systemImage: "mappin.and.ellipse")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding(.leading, 8)

            Spacer()
        }
        .padding()
    }
}

struct CountriesListRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CountriesListRow(
                name: "S. Korea",
                continent: "Asia",
                population: 51_343_185,
                url: "https://disease.sh/assets/img/flags/kr.png"
            )

            CountriesListRow(
                name: "S. Korea",
                continent: "Asia",
                population: 51_343_185,
                url: "https://disease.sh/assets/img/flags/kr.png"
            )
            .preferredColorScheme(.dark)
        }
        .previewLayout(.sizeThatFits)
    }
}

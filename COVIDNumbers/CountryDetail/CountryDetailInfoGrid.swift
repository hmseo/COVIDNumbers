//
//  CountryDetailInfoGrid.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 6/25/22.
//

import SwiftUI

struct CountryDetailInfoGrid: View {
    let country: Country
    let columns = [GridItem(), GridItem()]

    var body: some View {
        LazyVGrid(columns: columns) {
            CountryDetailGridItem(
                title: "Cases",
                number: country.cases,
                today: country.todayCases
            )

            CountryDetailGridItem(
                title: "Deaths",
                number: country.deaths,
                today: country.todayDeaths
            )

            CountryDetailGridItem(
                title: "Recovered",
                number: country.recovered,
                today: country.todayRecovered
            )

            CountryDetailGridItem(
                title: "Active",
                number: country.active,
                today: nil
            )
        }
        .padding()
    }
}

struct CountryDetailInfoGrid_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailInfoGrid(country: .example)
            .previewLayout(.sizeThatFits)
    }
}

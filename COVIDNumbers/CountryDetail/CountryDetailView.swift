//
//  CountryDetailView.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 5/23/22.
//

import SwiftUI

struct CountryDetailView: View {
    let country: Country

    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    CountryDetailHeader(country: country, geometry: geometry)

                    CountryDetailInfoGrid(country: country)
                }
            }
        }
        .navigationTitle(country.country)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CountryDetailView(country: .example)
        }
    }
}

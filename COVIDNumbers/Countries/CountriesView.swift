//
//  CountriesView.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 2/28/22.
//

import SwiftUI

struct CountriesView: View {
    @StateObject private var viewModel = CountriesViewModel()

    var body: some View {
        if viewModel.isLoading {
            ProgressView()
        } else {
            NavigationView {
                Group {
                    if let error = viewModel.error {
                        ErrorView(error: error)
                    } else {
                        List {
                            ForEach(viewModel.countries) { country in
                                Text(country.country)
                            }
                        }
                        .listStyle(.plain)
                    }
                }
                .navigationTitle("Countries")
            }
        }
    }
}

struct CountriesView_Previews: PreviewProvider {
    static var previews: some View {
        CountriesView()
    }
}

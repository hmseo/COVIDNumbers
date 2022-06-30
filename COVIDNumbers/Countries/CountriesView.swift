//
//  CountriesView.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 2/28/22.
//

import SwiftUI

struct CountriesView: View {
    @StateObject private var viewModel: CountriesViewModel

    init() {
        _viewModel = StateObject(wrappedValue: CountriesViewModel())
    }

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
                            ForEach(viewModel.searchedResults) { country in
                                NavigationLink {
                                    CountryDetailView(country: country)
                                } label: {
                                    CountriesListRow(
                                        name: country.country,
                                        continent: country.continent,
                                        population: country.population,
                                        url: country.countryInfo.flag
                                    )
                                }
                            }
                        }
                        .listStyle(.plain)
                        .searchable(text: $viewModel.searchTerm)
                    }
                }
                .navigationTitle("Countries")
                .toolbar {
                    Button {
                        viewModel.fetch()
                    } label: {
                        Label("Refresh", systemImage: "arrow.clockwise")
                    }
                }
            }
        }
    }
}

struct CountriesView_Previews: PreviewProvider {
    static var previews: some View {
        CountriesView()
    }
}

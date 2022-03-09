//
//  WorldwideView.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 2/18/22.
//

import SwiftUI

struct WorldwideView: View {
    @StateObject private var viewModel = WorldwideViewModel()

    var body: some View {
        NavigationView {
            if viewModel.isLoading {
                ProgressView()
            } else {
                Group {
                    if let worldwide = viewModel.worldwide {
                        WorldwideListView(
                            cases: worldwide.cases,
                            todayCases: worldwide.todayCases,
                            deaths: worldwide.deaths,
                            todayDeaths: worldwide.todayDeaths,
                            recovered: worldwide.recovered,
                            todayRecovered: worldwide.todayRecovered,
                            active: worldwide.active,
                            population: worldwide.population,
                            affectedCountries: worldwide.affectedCountries,
                            updated: worldwide.updated
                        )
                    } else {
                        if let error = viewModel.error {
                            ErrorView(error: error)
                        }
                    }
                }
                .navigationTitle("COVID Numbers")
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

struct WorldwideView_Previews: PreviewProvider {
    static var previews: some View {
        WorldwideView()
    }
}

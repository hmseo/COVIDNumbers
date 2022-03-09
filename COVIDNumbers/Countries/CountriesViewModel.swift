//
//  CountriesViewModel.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 2/28/22.
//

import Foundation

@MainActor
class CountriesViewModel: ObservableObject {
    @Published private(set) var isLoading = false
    @Published private(set) var countries = [Country]()
    @Published private(set) var error: Error?

    init() {
        fetch()
    }

    func fetch() {
        isLoading = true
        countries = []
        error = nil

        let networkManager = NetworkManager<[Country]>()

        Task {
            let result = await networkManager.download(from: .allCountries)

            isLoading = false

            switch result {
            case .success(let data):
                countries = data
            case .failure(let error):
                self.error = error
            }
        }
    }
}

//
//  WorldwideViewModel.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 2/18/22.
//

import Foundation

@MainActor
class WorldwideViewModel: ObservableObject {
	@Published private(set) var isLoading = false
    @Published private(set) var worldwide: Worldwide? = nil
    @Published private(set) var error: Error?

    init() {
        fetch()
    }

    func fetch() {
        isLoading = true
        worldwide = nil
        error = nil

        let networkManager = NetworkManager()

        Task {
            let result = await networkManager.download(from: .worldwide)

            isLoading = false

            switch result {
            case .success(let data):
                worldwide = data
            case .failure(let error):
                self.error = error
            }
        }
    }
}

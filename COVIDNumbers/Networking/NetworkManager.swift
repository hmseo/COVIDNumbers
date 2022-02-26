//
//  NetworkManager.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 2/12/22.
//

import Foundation

struct NetworkManager {
	let session: URLSession

	init(session: URLSession = .shared) {
		self.session = session
	}

	func download(from endpoint: Endpoint) async -> Result<Worldwide, Error> {
        do {
            let (data, response) = try await session.data(from: endpoint.url)

            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                return .failure(URLError(.badServerResponse))
            }

            guard data.count > 0 else {
                return .failure(URLError(.zeroByteResource))
            }

            let result = try JSONDecoder().decode(Worldwide.self, from: data)

            return .success(result)
        } catch {
            return .failure(error)
        }
	}
}

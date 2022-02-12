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

	func download(from endpoint: Endpoint) async throws -> Data {
		let (data, _) = try await session.data(from: endpoint.url)
		return data
	}
}

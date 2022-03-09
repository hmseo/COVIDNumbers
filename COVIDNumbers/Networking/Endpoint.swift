//
//  Endpoint.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 2/12/22.
//

import Foundation

struct Endpoint {
	let path: String
	var queries: [URLQueryItem] = []
}

extension Endpoint {
	var url: URL {
		var components = URLComponents()
		components.scheme = "https"
		components.host = "corona.lmao.ninja"
		components.path = "/" + path
		components.queryItems = queries

		guard let url = components.url else {
			preconditionFailure("Invalid URL components: \(components)")
		}

		return url
	}
}

extension Endpoint {
	static var worldwide: Self {
		Endpoint(
			path: "v2/all",
			queries: [URLQueryItem(name: "yesterday", value: "true")]
		)
	}

    static var allCountries: Self {
        Endpoint(
            path: "v2/countries",
            queries: [
                URLQueryItem(name: "yesterday", value: "true"),
                URLQueryItem(name: "sort", value: "")
            ]
        )
    }
}

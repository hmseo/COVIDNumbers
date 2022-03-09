//
//  Country.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 2/27/22.
//

import Foundation

struct Country: Decodable {
    let updated: TimeInterval
    let country: String
    let countryInfo: CountryInfo
    let cases: Int
    let todayCases: Int
    let deaths: Int
    let todayDeaths: Int
    let recovered: Int
    let todayRecovered: Int
    let population: Int
    let continent: String
}

extension Country {
    struct CountryInfo: Decodable {
        var iso2: String?
        var iso3: String?
        let lat: Double
        let long: Double
        let flag: String
    }
}

extension Country: Identifiable {
    var id: String { country }
}

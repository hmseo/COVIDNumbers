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
    let active: Int
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

extension Country {
    static var example: Country {
        Country(
            updated: 1653276487775,
            country: "S. Korea",
            countryInfo: CountryInfo(
                iso2: "KR",
                iso3: "KOR",
                lat: 37,
                long: 127.5,
                flag: "https://disease.sh/assets/img/flags/kr.png"),
            cases: 17967672,
            todayCases: 9975,
            deaths: 23987,
            todayDeaths: 22,
            recovered: 17414103,
            todayRecovered: 42223,
            active: 10334,
            population: 51352317,
            continent: "Asia"
        )
    }
}

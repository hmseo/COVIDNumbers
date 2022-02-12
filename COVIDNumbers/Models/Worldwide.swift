//
//  Worldwide.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 2/8/22.
//

import Foundation

struct Worldwide: Decodable {
    let updated: Int
    let cases: Int
    let todayCases: Int
    let deaths: Int
    let todayDeaths: Int
    let recovered: Int
    let todayRecovered: Int
    let active: Int
    let population: Int
    let affectedCountries: Int
}

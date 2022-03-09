//
//  WorldwideListView.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 2/26/22.
//

import SwiftUI

struct WorldwideListView: View {
    let cases: Int
    let todayCases: Int
    let deaths: Int
    let todayDeaths: Int
    let recovered: Int
    let todayRecovered: Int
    let active: Int
    let population: Int
    let affectedCountries: Int
    let updated: TimeInterval

    var body: some View {
        List {
            Image("covid")
                .resizable()
                .scaledToFit()
                .padding(-20)

            Section {
                WorldwideListRow(title: "Cases", number: cases)
                WorldwideListRow(title: "Today Cases", number: todayCases)
                WorldwideListRow(title: "Deaths", number: deaths)
                WorldwideListRow(title: "Today Deaths", number: todayDeaths)
                WorldwideListRow(title: "Recovered", number: recovered)
                WorldwideListRow(title: "Today Recovered", number: todayRecovered)
                WorldwideListRow(title: "Active", number: active)
                WorldwideListRow(title: "World Population", number: population)
                WorldwideListRow(title: "Affected Countries", number: affectedCountries)
            } header: {
                Text("Worldwide Yesterday")
            } footer: {
                HStack {
                    Spacer()
                    Text("Last updated")
                    Text(updated.relativeTimeString())
                }
            }
        }
        .listStyle(.insetGrouped)
    }
}

struct WorldwideListView_Previews: PreviewProvider {
    static var previews: some View {
        WorldwideListView(
            cases: 0,
            todayCases: 0,
            deaths: 0,
            todayDeaths: 0,
            recovered: 0,
            todayRecovered: 0,
            active: 0,
            population: 0,
            affectedCountries: 0,
            updated: 1_645_918_053_912
        )
    }
}

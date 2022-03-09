//
//  ContentView.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 2/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WorldwideView()
                .tabItem {
                    Label("Worldwide", systemImage: "globe.asia.australia")
                }

            CountriesView()
                .tabItem {
                    Label("Countries", systemImage: "flag.2.crossed")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

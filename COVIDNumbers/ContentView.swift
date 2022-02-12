//
//  ContentView.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 2/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .task {
                let url = URL(string: "https://corona.lmao.ninja/v2/all?yesterday")!

                do {
                    let (data, _) = try await URLSession.shared.data(from: url)
                    print(data)
                } catch {
                    print(error.localizedDescription)
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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
				let networkManager = NetworkManager()

				do {
					let data = try await networkManager.download(from: .worldwide)
					let result = try JSONDecoder().decode(Worldwide.self, from: data)
					print(result)
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

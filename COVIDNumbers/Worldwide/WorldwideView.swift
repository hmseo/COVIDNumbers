//
//  WorldwideView.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 2/18/22.
//

import SwiftUI

struct WorldwideView: View {
    @StateObject private var viewModel = WorldwideViewModel()

    var body: some View {
        if viewModel.isLoading {
            ProgressView()
        } else {
            Text("Cases: \(viewModel.worldwide?.cases ?? 0)")
        }
    }
}

struct WorldwideView_Previews: PreviewProvider {
    static var previews: some View {
        WorldwideView()
    }
}

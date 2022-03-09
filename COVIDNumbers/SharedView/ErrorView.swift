//
//  ErrorView.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 3/2/22.
//

import SwiftUI

struct ErrorView: View {
    let error: Error

    var body: some View {
        Text(error.localizedDescription)
            .foregroundColor(.red)
            .multilineTextAlignment(.center)
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(error: URLError(.zeroByteResource))
    }
}

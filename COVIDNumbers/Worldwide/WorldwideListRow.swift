//
//  WorldwideListRow.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 2/26/22.
//

import SwiftUI

struct WorldwideListRow: View {
    let title: String
    let number: Int

    var body: some View {
        HStack {
            Text(title)
                .bold()

            Spacer()

            Text("\(number)")
                .foregroundColor(.secondary)
        }
    }
}

struct WorldwideListRow_Previews: PreviewProvider {
    static var previews: some View {
        WorldwideListRow(title: "Cases", number: 123456)
    }
}

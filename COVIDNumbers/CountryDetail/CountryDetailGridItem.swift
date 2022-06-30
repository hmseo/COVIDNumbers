//
//  CountryDetailGridItem.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 6/25/22.
//

import SwiftUI

struct CountryDetailGridItem: View {
    let title: String
    let number: Int
    let today: Int?

    var body: some View {
        VStack(spacing: 8) {
            Text(title)
                .font(.headline)

            Text(number, format: .number)
                .font(.title2)
                .bold()

            if let today = today {
                Text("+\(today)")
                    .foregroundColor(.secondary)
            } else {
                Text("No Data")
                    .foregroundColor(.clear)
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color(white: 0.95))
        .cornerRadius(8)
    }
}

struct CountryDetailGridItem_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailGridItem(title: "Case", number: 17967672, today: 9975)
            .previewLayout(.sizeThatFits)
    }
}

//
//  TimeInterval+String.swift
//  COVIDNumbers
//
//  Created by Hyeonmin Seo on 2/27/22.
//

import Foundation

extension TimeInterval {
    func relativeTimeString() -> String {
        let date = Date(timeIntervalSince1970: self / 1000)
        let formatter = RelativeDateTimeFormatter()
        formatter.locale = .autoupdatingCurrent
        formatter.dateTimeStyle = .named

        let string = formatter.localizedString(for: date, relativeTo: Date())
        return string
    }
}

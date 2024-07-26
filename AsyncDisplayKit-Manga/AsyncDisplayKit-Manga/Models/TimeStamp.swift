//
//  TimeStamp.swift
//  honto_iOS
//
//  Created by Yudai Asano on R 5/01/24.
//

import Foundation

struct TimeStamp: Hashable, Equatable {
    static let zero = TimeStamp(rawValue: 0)

    var rawValue: Int

    static func == (lhs: TimeStamp, rhs: TimeStamp) -> Bool {
        lhs.rawValue == rhs.rawValue
    }

    func string(maximumUnitCount: Int) -> String? {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .brief
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.zeroFormattingBehavior = [.dropLeading, .dropTrailing]
        formatter.maximumUnitCount = maximumUnitCount
        let dateComponents = DateComponents(second: rawValue)
        return formatter.string(from: dateComponents)
    }
}

//
//  Common+CC.swift
//  PayPayChallenge
//
//  Created by Kishor Garkal on 20/03/21.
//

import Foundation

extension Dictionary {
    mutating func updateKeys(_ transform: (Key) -> Key) {
        self = Dictionary(uniqueKeysWithValues:
                          self.map { (transform($0), $1) })
    }
}

extension String {
    subscript(_ range: CountableRange<Int>) -> String {
        let start = index(startIndex, offsetBy: max(0, range.lowerBound))
        let end = index(start, offsetBy: min(self.count - range.lowerBound,
                                             range.upperBound - range.lowerBound))
        return String(self[start..<end])
    }

    subscript(_ range: CountablePartialRangeFrom<Int>) -> String {
        let start = index(startIndex, offsetBy: max(0, range.lowerBound))
         return String(self[start...])
    }
}

extension Float
{
    var cleanValue: String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.1f", self) : String(format: "%.2f", self)
    }
}

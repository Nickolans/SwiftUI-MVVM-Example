//
//  Set+Extension.swift
//  SwiftUI-MVVM-Example
//
//  Created by Nickolans Griffith on 3/29/23.
//

import Foundation

extension Set where Element == Widget {
    func toArray() -> Array<Widget> {
        return Array(self)
    }
}

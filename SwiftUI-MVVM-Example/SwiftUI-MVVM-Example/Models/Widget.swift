//
//  Widget.swift
//  SwiftUI-MVVM-Example
//
//  Created by Nickolans Griffith on 3/29/23.
//

import Foundation

struct Widget: Identifiable, Hashable, Equatable {
    let id = UUID()
    var name: String
    var content: String
    var selected: Bool
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func ==(left: Widget, right: Widget) -> Bool {
        return left.id == right.id
    }
}

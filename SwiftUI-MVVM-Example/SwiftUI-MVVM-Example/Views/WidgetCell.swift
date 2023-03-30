//
//  WidgetCell.swift
//  SwiftUI-MVVM-Example
//
//  Created by Nickolans Griffith on 3/29/23.
//

import Foundation
import SwiftUI

struct WidgetCell: View {
    
    var widget: Widget
    var onPress: ()->()
    
    private var cell: some View {
        VStack(spacing: 15) {
                Text(widget.name)
                .frame(maxWidth: .infinity, alignment: .leading)
                Text(widget.content)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(15)
        .background(Color.white)
        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.gray, lineWidth: 1))
        .cornerRadius(15)
        .frame(maxWidth: .infinity, alignment: .leading)
        .onTapGesture(perform: self.onPress)
    }
    
    var body: some View {
        if (widget.selected) {
            cell
                .shadow(color: .gray, radius: 15)
        } else {
            cell
        }
    }
}

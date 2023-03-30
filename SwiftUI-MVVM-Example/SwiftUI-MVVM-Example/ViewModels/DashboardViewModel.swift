//
//  DashboardViewModel.swift
//  SwiftUI-MVVM-Example
//
//  Created by Nickolans Griffith on 3/29/23.
//

import Foundation

class DashboardViewModel: ObservableObject {
    // Example widgets
    @Published private(set) var widgets: Set<Widget> = [
        Widget(name: "Weather", content: "The weather today is cloudy.", selected: false),
        Widget(name: "Fun Fact", content: "This is an example of MVVM.", selected: false),
    ]
    
    func toggleWidget(_ widget: Widget) {
        var update = widget
        update.selected = !widget.selected
        widgets.update(with: update)
    }
}

//
//  ContentView.swift
//  SwiftUI-MVVM-Example
//
//  Created by Nickolans Griffith on 3/29/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var viewModel: DashboardViewModel = DashboardViewModel()
    
    var body: some View {
        VStack(spacing: 15) {
            
            ForEach(viewModel.widgets.toArray()) { widget in
                WidgetCell(widget: widget) {
                    viewModel.toggleWidget(widget)
                }
            }
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

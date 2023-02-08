//
//  ContentView.swift
//  Test_ListSelection
//
//  Created by Eric Bariaux on 06/01/2022.
//

import SwiftUI

// Single selection
struct ContentView: View {

    var body: some View {
        VStack() {
            Text("""
                 Tests for selection in lists using different mechanisms:
                 - single selection
                 - single selection with navigation
                 - multiple selection
                 - multiple selection with navigation (NavigationView)
                 - multiple selection with navigation (NavigationSplitView)
                 
                 Use File menu to select use case.
                 """)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

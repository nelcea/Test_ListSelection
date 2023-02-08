//
//  SingleSection_NoNavigation.swift
//  Test_ListSelection
//
//  Created by Eric Bariaux on 04/02/2023.
//

import SwiftUI

struct SingleSelection_NoNavigation: View {
    @State private var selection: Item.ID?

    var body: some View {
        VStack() {
            NavigationView() {
                List(selection: $selection) {
                    ForEach(testItems) { item in
                        Text(item.name)
                    }
                }
            }
            Text("Selection \(selection?.uuidString ?? "none")")
        }
        .padding()
    }
}

struct SingleSection_NoNavigation_Previews: PreviewProvider {
    static var previews: some View {
        SingleSelection_NoNavigation()
    }
}

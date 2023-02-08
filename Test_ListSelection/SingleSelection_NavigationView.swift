//
//  SingleSelection_NavigationLink.swift
//  Test_ListSelection
//
//  Created by Eric Bariaux on 04/02/2023.
//

import SwiftUI

struct SingleSelection_NavigationView: View {
    @State private var selection: Item.ID?

    var body: some View {
        VStack() {
            NavigationView() {
                List(selection: $selection) {
                    ForEach(testItems) { item in
                        NavigationLink(destination: { Text(item.name) }) {
                            Text(item.name)
                        }
                    }
                }
            }
            Text("Selection \(selection?.uuidString ?? "none")")
        }
        .padding()
    }
}

struct SingleSelection_NavigationLink_Previews: PreviewProvider {
    static var previews: some View {
        SingleSelection_NavigationView()
    }
}

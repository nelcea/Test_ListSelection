//
//  StandardNavigation_MultipleSelection.swift
//  Test_ListSelection
//
//  Created by Eric Bariaux on 19/01/2022.
//

import SwiftUI


struct MultipleSelection_NavigationView: View {
    @State private var selection = Set<Item.ID>()
    
    var body: some View {
        NavigationView {
            VStack() {
                List(selection: $selection) {
                    ForEach(testItems) { item in
                        NavigationLink(destination: Text(item.name)) {
                            Label(item.name, systemImage: "snow")
                        }
                    }
                }
                Text("\(selection.count) item selected")
            }
        }
        .padding()
    }
}

struct StandardNavigation_MultipleSelection_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSelection_NavigationView()
    }
}

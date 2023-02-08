//
//  List_MultipleSelection_NoNavigation.swift
//  Test_ListSelection
//
//  Created by Eric Bariaux on 19/01/2022.
//

import SwiftUI

struct List_MultipleSelection_NoNavigation: View {
    @State private var selection = Set<Item.ID>()
    
    var body: some View {
        VStack() {
            List(selection: $selection) {
                ForEach(testItems) { item in
                    Text(item.name)
                }
            }
            Text("\(selection.count) item selected")
        }
        .padding()
    }
}

struct List_MultipleSelection_NoNavigation_Previews: PreviewProvider {
    static var previews: some View {
        List_MultipleSelection_NoNavigation()
    }
}

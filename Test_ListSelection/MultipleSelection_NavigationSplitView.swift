//
//  MultipleSelection_NavigaationStack.swift
//  Test_ListSelection
//
//  Created by Eric Bariaux on 04/02/2023.
//

import SwiftUI

struct MultipleSelection_NavigationSplitView: View {
    @State private var selection = Set<Item.ID>()
    
    var body: some View {
        NavigationSplitView {
            VStack() {
                List(selection: $selection) {
                    ForEach(testItems) { item in
                        NavigationLink(item.name, value: item)
                    }
                }
                Text("\(selection.count) item selected")
            }
        } detail: {
            switch selection.count {
            case 0:
                Text("No selection")
            case 1:
                Label(selection.first!.uuidString, systemImage: "snow")
            default:
                Text("Multiple selection")
            }
        }
        .padding()
    }
}

struct MultipleSelection_NavigaationStack_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSelection_NavigationSplitView()
    }
}

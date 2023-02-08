//
//  TestData.swift
//  Test_ListSelection
//
//  Created by Eric Bariaux on 19/01/2022.
//

import Foundation

struct Item: Identifiable, Hashable {
    var id = UUID()
    var name: String
}

let testItems = [
    Item(name: "Item 1"),
    Item(name: "Item 2"),
    Item(name: "Item 3"),
    Item(name: "Item 4"),
    Item(name: "Item 5"),
]

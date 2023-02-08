//
//  Test_ListSelectionApp.swift
//  Test_ListSelection
//
//  Created by Eric Bariaux on 06/01/2022.
//

import SwiftUI

enum TestCases: String {
    case SingleSelection_NoNavigation
    case SingleSelection_NavigationView
    case MultipleSelection_NoNavigation
    case MultipleSelection_NavigationView
    case MultipleSelection_NavigationSplitView
}

@main
struct Test_ListSelectionApp: App {
    @Environment(\.openWindow) private var openWindow

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        WindowGroup(id: TestCases.SingleSelection_NoNavigation.rawValue) {
            SingleSelection_NoNavigation()
        }
        WindowGroup(id: TestCases.SingleSelection_NavigationView.rawValue) {
            SingleSelection_NavigationView()
        }
        WindowGroup(id: TestCases.MultipleSelection_NoNavigation.rawValue) {
            List_MultipleSelection_NoNavigation()
        }
        WindowGroup(id: TestCases.MultipleSelection_NavigationView.rawValue) {
            MultipleSelection_NavigationView()
        }
        WindowGroup(id: TestCases.MultipleSelection_NavigationSplitView.rawValue) {
            MultipleSelection_NavigationSplitView()
        }
        .commands {
            CommandGroup(after: .newItem) {
                Button(TestCases.SingleSelection_NoNavigation.rawValue) {
                    openWindow(id: TestCases.SingleSelection_NoNavigation.rawValue)
                }
                Button(TestCases.SingleSelection_NavigationView.rawValue) {
                    openWindow(id: TestCases.SingleSelection_NavigationView.rawValue)
                }
                Button(TestCases.MultipleSelection_NoNavigation.rawValue) {
                    openWindow(id: TestCases.MultipleSelection_NoNavigation.rawValue)
                }
                Button(TestCases.MultipleSelection_NavigationView.rawValue) {
                    openWindow(id: TestCases.MultipleSelection_NavigationView.rawValue)
                }
                Button(TestCases.MultipleSelection_NavigationSplitView.rawValue) {
                    openWindow(id: TestCases.MultipleSelection_NavigationSplitView.rawValue)
                }
            }
        }
    }
}

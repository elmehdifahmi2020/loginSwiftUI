//
//  loginSwiftUIApp.swift
//  loginSwiftUI
//
//  Created by user on 26/4/2024.
//

import SwiftUI

@main
struct loginSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

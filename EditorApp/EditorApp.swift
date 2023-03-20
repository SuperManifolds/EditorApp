//
//  EditorAppApp.swift
//  EditorApp
//
//  Created by Alex Sørlie Glomsaas on 2023-03-20.
//

import SwiftUI

@main
struct EditorApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

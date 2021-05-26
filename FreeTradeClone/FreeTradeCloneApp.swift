//
//  FreeTradeCloneApp.swift
//  FreeTradeClone
//
//  Created by Connor Walker on 26/05/2021.
//

import SwiftUI

@main
struct FreeTradeCloneApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

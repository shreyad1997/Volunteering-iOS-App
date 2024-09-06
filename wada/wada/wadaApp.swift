//
//  wadaApp.swift
//  wada
//
//  Created by shreya on 8/15/24.
//

import SwiftUI

@main
struct wadaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

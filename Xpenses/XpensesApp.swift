//
//  XpensesApp.swift
//  Xpenses
//
//  Created by Luis Guzman on 25/10/25.
//

import SwiftUI
import SwiftData

@main
struct XpensesApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Account.self, Category.self, Currency.self, RecurrentTransaction.self, Transaction.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}

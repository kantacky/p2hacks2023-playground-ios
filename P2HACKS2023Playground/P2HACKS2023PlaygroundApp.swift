//
//  P2HACKS2023PlaygroundApp.swift
//  P2HACKS2023Playground
//
//  Created by Kanta Oikawa on 2023/12/03.
//

import SwiftUI
import SwiftData

@main
struct P2HACKS2023PlaygroundApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
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

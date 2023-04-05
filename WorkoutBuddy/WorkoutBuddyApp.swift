//
//  WorkoutBuddyApp.swift
//  WorkoutBuddy
//
//  Created by Keshav Gupta on 2023-04-03.
//

import SwiftUI

@main
struct WorkoutBuddyApp: App {
    @StateObject private var persistenceController = PersistenceController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

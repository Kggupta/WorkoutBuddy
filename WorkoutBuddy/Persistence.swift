//
//  Persistence.swift
//  WorkoutBuddy
//
//  Created by Keshav Gupta on 2023-04-03.
//

import CoreData
import Foundation

class PersistenceController: ObservableObject {
    let container = NSPersistentCloudKitContainer(name: "WorkoutBuddy")
    
    init () {
        container.loadPersistentStores {
            description, error in
            if let error = error {
                print("Core Data Failed To Load: \(error.localizedDescription)")
            }
        }
    }
}

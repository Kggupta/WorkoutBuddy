//
//  User.swift
//  WorkoutBuddy
//
//  Created by Keshav Gupta on 2023-04-05.
//

import Foundation
import SwiftUI

class User: ObservableObject {
    // User Default
    private var userDefaults = UserDefaults.standard
    
    // Keys
    private static let currentDayIndexKey: String = "currentDayIndex"
    private static let unitKey: String = "unit"
    private static let weightIncrementKey: String = "weightIncrement"
    
    @Setting(key: currentDayIndexKey)
    var currentDayIndex: Int = 0
    
    @Setting(key: unitKey)
    var unit: String = Unit.kilograms.rawValue
    
    @Setting(key: weightIncrementKey)
    var weightIncrement: Double = 1
}

//
//  SetExtensions.swift
//  WorkoutBuddy
//
//  Created by Keshav Gupta on 2023-04-03.
//

import Foundation

extension Set {
    var weight: Double {
        get {
            return WeightUtility.roundToNearestHalf(value: self.weightRaw)
        }
        
        set {
            self.weightRaw = newValue
        }
    }
}

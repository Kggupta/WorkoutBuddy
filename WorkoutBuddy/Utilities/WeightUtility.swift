//
//  WeightUtility.swift
//  WorkoutBuddy
//
//  Created by Keshav Gupta on 2023-04-05.
//

import Foundation

class WeightUtility {
    public static func roundToNearestHalf(value: Double) -> Double {
        return round(value * 2) / 2
    }
    
    public static func twoDecimals(value: Double) -> String {
        return String(format: "%.2f", value)
    }
}

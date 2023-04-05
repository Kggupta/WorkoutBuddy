//
//  Unit.swift
//  WorkoutBuddy
//
//  Created by Keshav Gupta on 2023-04-03.
//

import Foundation

enum Unit: String {
    case pounds = "lbs"
    case kilograms = "kg"
}

func ==(left: Unit, right: String) -> Bool {
    return left.rawValue == right
}

func ==(left: String, right: Unit) -> Bool {
    return right.rawValue == left
}

precedencegroup UnitPrecedence {
    assignment:false
    associativity: left
}

infix operator <- : UnitPrecedence
func <- ( left: inout String, right: Unit) {
    left = right.rawValue
}

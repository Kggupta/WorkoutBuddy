//
//  Setting.swift
//  WorkoutBuddy
//
//  Created by Keshav Gupta on 2023-04-05.
//

import Foundation
import Combine

@propertyWrapper
struct Setting<T> {
    private let key: String
    private let defaultValue: T
    
    init(wrappedValue value: T, key: String) {
        self.key = key
        self.defaultValue = value
    }
    
    var wrappedValue: T {
        get {
            UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
    
    public static subscript<EnclosingSelf: ObservableObject>(
        _enclosingInstance object: EnclosingSelf,
        wrapped wrappedKeyPath: ReferenceWritableKeyPath<EnclosingSelf, T>,
        storage storageKeyPath: ReferenceWritableKeyPath<EnclosingSelf, Setting<T>>
    ) -> T {
        get {
            return object[keyPath: storageKeyPath].wrappedValue
        }
        set {
            (object.objectWillChange as? ObservableObjectPublisher)?.send()
            UserDefaults.standard.set(newValue, forKey: object[keyPath: storageKeyPath].key)
        }
    }
}

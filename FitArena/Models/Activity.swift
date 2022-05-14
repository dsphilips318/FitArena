//
//  Activity.swift
//  FitArena
//
//  Created by CS on 5/11/22.
//

import Foundation
import SwiftUI

protocol Activity {
    var title : String { get }
    var sets: Int { get }
}

protocol Workout {
    var title: String { get }
    var color: Color { get }
    var icon: String { get }
    var category: String { get }
    var type: String { get }
}

struct Exercise : Activity {
    var title: String
    var sets: Int
    
    var tracksWeight: Bool
    var tracksDistance: Bool
    var tracksCalories: Bool
    var hasTime: Bool
    

    var reps: Int
    
    var weight: Double?
    var distance: Double?
    var calories: Double?
    var timeInSec: Double?
}

struct SuperSet : Activity {
    var title: String = ""
    var sets: Int
    
    var exercises: [Exercise]
}


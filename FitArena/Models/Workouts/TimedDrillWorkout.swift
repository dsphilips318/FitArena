//
//  TimedDrillWorkout.swift
//  FitArena
//
//  Created by CS on 5/11/22.
//

import Foundation
import SwiftUI

struct TimedDrillWorkout : Workout {
    var title: String
    var color: Color
    var icon: String
    var category: String
    let type = "Timed Drill"
    
    var timeInSec: Int
    var totalSets: Int
    
    var exercises: [Exercise]
}

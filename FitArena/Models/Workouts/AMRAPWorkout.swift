//
//  AMRAPWorkout.swift
//  FitArena
//
//  Created by CS on 5/11/22.
//

import Foundation
import SwiftUI

struct AMRAPWorkout : Workout {
    var title: String
    var color: Color
    var icon: String
    var category: String
    let type = "AMRAP"
    
    var timeInSec: Int
    var rounds: Int
    
    var exercises: [Exercise]
}

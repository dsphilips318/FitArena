//
//  SetsAndRepsWorkout.swift
//  FitArena
//
//  Created by CS on 5/11/22.
//

import Foundation
import SwiftUI


struct SetsAndRepsWorkout : Workout {
    var title: String
    var color: Color
    var icon: String
    var category: String
    let type = "Sets and Reps"
    
    var activities: [Activity]
}

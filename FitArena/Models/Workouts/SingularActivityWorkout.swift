//
//  SingularActivityWorkout.swift
//  FitArena
//
//  Created by CS on 5/11/22.
//

import Foundation
import SwiftUI

struct SingularActivityWorkout : Workout {
    var title: String
    var color: Color
    var icon: String
    let category: String
    let type = "Singular Activity"
    
    var timeInSec: Int
    
    var exercise: Exercise
}

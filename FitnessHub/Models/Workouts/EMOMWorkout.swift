//
//  EMOMWorkout.swift
//  FitArena
//
//  Created by CS on 5/11/22.
//

import Foundation
import SwiftUI

struct EMOMWorkout : Workout {
    var title: String
    var color: Color
    var icon: String
    var category: String
    let type = "EMOM"
    
    var numExercises: Int
    var timeInSec: Int
    
    var exercises: [Exercise]
}

//
//  Workout.swift
//  FitnessHub
//
//  Created by Daniel Shola-Philips on 1/14/22.
//

import Foundation
import SwiftUI

protocol Workout {
    var title: String { get }
    var color: String { get }
    var icon: String { get }
    var category: String { get }
    var type: String { get }
}

struct SingularActivityWorkout : Workout {
    var title: String
    var color: String
    var icon: String
    let category: String
    let type = "Singular Activity"
    
    var timeInSec: Int
    var exercise: Exercise
}

struct TimedDrillWorkout : Workout {
    var title: String
    var color: String
    var icon: String
    var category: String
    let type = "Timed Drill"
    
    var timeInSec: Int
    var totalSets: Int
    var exercises: [Exercise]
}

struct AMRAPWorkout : Workout {
    var title: String
    var color: String
    var icon: String
    var category: String
    let type = "AMRAP"
    
    var timeInSec: Int
    var rounds: Int
    var exercises: [Exercise]
}

// Not Finished
struct SetsAndRepsWorkout : Workout {
    var title: String
    var color: String
    var icon: String
    var category: String
    let type = "Sets and Reps"
}

// Not Finished
struct LaddersWorkout : Workout {
    var title: String
    var color: String
    var icon: String
    var category: String
    let type = "Ladders"
}

// Not Finished
struct EMOMWorkout : Workout {
    var title: String
    var color: String
    var icon: String
    var category: String
    let type = "EMOM"
}

// Not Finished
struct TabataWorkout : Workout {
    var title: String
    var color: String
    var icon: String
    var category: String
    let type = "Tabata"
}


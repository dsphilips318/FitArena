//
//  Workout.swift
//  FitnessHub
//
//  Created by Daniel Shola-Philips on 1/14/22.
//

import Foundation
import SwiftUI

struct Workout {
    var title : String
    var color : Color
    
    var iconName: String = "circle"
    //TO-DO: Create Custom Icons For Workout Categories
    
    //Types of Workouts
    enum WorkoutTypes {
        case SetsAndReps
        case Tabata
        case EMOM
        case Ladders
        case Complexes
        case AMRAP
        case TimedDrill
        case SingularActivity
    }
    
    enum WorkoutCategories {
        case basketball, baseball, soccer, football, tennis, volleyball, hockey
    }
}



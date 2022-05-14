//
//  TabataWorkout.swift
//  FitArena
//
//  Created by CS on 5/11/22.
//

import Foundation
import SwiftUI


struct TabataWorkout : Workout {
    var title: String
    var color: Color
    var icon: String
    var category: String
    let type = "Tabata"
    
    var exercises: [Exercise]
}

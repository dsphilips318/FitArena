//
//  LaddersWorkout.swift
//  FitArena
//
//  Created by CS on 5/11/22.
//

import Foundation
import SwiftUI

struct LaddersWorkout : Workout {
    var title: String
    var color: Color
    var icon: String
    var category: String
    let type = "Ladders"
    
    var ladderType: LadderType
    var startRep: Int
    var endRep: Int
    
    var exercises: [Exercise]
}

enum LadderType {
    case ascending
    case descending
    case ascendToDescend
    case descendToAscend
}

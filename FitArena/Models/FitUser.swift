//
//  FitUser.swift
//  FitArena
//
//  Created by CS on 3/17/22.
//

import Foundation
import SwiftUI

struct FitUser {
    
    var firstName: String
    var lastName: String
    
    var birthMonth: Int
    var birthDay: Int
    var birthYear: Int
    
    var createdWorkouts: [Workout]
    var sharedWorkouts: [Workout]
    var recentWorkouts: [Workout]
    
    var allWorkouts: [Workout]
}

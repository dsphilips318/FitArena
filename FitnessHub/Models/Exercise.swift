//
//  Exercise.swift
//  FitnessHub
//
//  Created by Daniel Shola-Philips on 1/14/22.
//

import Foundation

class Exercise {
    var title : String
    
    init (title: String) {
        self.title = title
    }
}

class SetsAndRepsExercise : Exercise {
    var repsArray = [[Int]]()
}



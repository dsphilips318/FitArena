//
//  TabBarItem.swift
//  FitnessHub
//
//  Created by CS on 3/14/22.
//

import Foundation
import SwiftUI

//struct TabBarItem: Hashable {
//    let iconName: String
//    let title: String
//    let color: Color
//}


enum TabBarItem: Hashable {
    case home, workout, calendar, progress
    
    //TO-DO: Create Dumbell Custom Symbol
    
    var iconName: String {
        switch self {
        case .home: return "house.fill"
        case .workout: return "circle"
        case .calendar: return "calendar"
        case .progress: return "chart.line.uptrend.xyaxis"
        }
    }
    
    var title: String {
        switch self {
        case .home: return "Home"
        case .workout: return "Workouts"
        case .calendar: return "Calendar"
        case .progress: return "Progress"
        }
    }
}

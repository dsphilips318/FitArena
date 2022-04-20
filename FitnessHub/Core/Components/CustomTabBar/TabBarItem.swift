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


enum TabBarItem: Hashable, Identifiable {
    case home, workout, calendar, progress, settings
    
    //TO-DO: Create Dumbell Custom Symbol
    
    var iconName: String {
        switch self {
        case .home: return "house.fill"
        case .workout: return "circle"
        case .calendar: return "calendar"
        case .progress: return "chart.line.uptrend.xyaxis"
        case .settings: return "gear"
        }
    }
    
    var title: String {
        switch self {
        case .home: return "Home"
        case .workout: return "Workouts"
        case .calendar: return "Calendar"
        case .progress: return "Progress"
        case .settings: return "Settings"
        }
    }
    
    var id : UUID {
        return UUID()
    }
    
    @ViewBuilder var screen: some View {
        switch self {
        case .home: HomeView()
        case .workout: WorkoutsView()
        case .calendar: CalendarView()
        case .progress: ProgressView()
        case .settings: SettingsView()
        }
    }
}

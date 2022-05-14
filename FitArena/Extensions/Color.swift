//
//  Color.swift
//  FitArena
//
//  Created by CS on 2/24/22.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = AppTheme()
    static let workout = WorkoutTheme()
}

struct AppTheme {
    let primary = Color("PrimaryAppColor")
    let secondary = Color("SecondaryAppColor")
    let background = Color("ScreenColor")
    let placeholder = Color("PlaceholderColor")
    
    let mainText = Color("MainTextColor")
    let secondaryText = Color("SecondaryTextColor")
}

struct WorkoutTheme {
    let pink = Color("LightPinkWorkout")
    let magenta = Color("MagentaWorkout")
    let red = Color("RedWorkout")
    let orange = Color("OrangeWorkout")
    let yellow = Color("YellowWorkout")
    let lime = Color("LightGreenWorkout")
    let green = Color("GreenWorkout")
    let cyan = Color("CyanWorkout")
    let blue = Color("BlueWorkout")
    let indigo = Color("IndigoWorkout")
    let lavender = Color("LightPurpleWorkout")
    let purple = Color("PurpleWorkout")
}

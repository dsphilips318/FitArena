//
//  WorkoutTileView.swift
//  FitnessHub
//
//  Created by CS on 3/15/22.
//

import SwiftUI

struct WorkoutTileView: View {
    
    @State var workout: Workout
    
    var body: some View {
        ZStack {
            
            VStack(alignment: .leading) {
                Text(workout.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 12)
                    .padding(.leading, 12)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Image(systemName: workout.iconName)
                        .padding(.bottom, 3)
                        .padding(.trailing, 3)
                        .font(.system(size: 85))
                }
            }
        }
        .frame(width: 175, height: 175, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(workout.color)
        )
    }
}

struct WorkoutTileView_Previews: PreviewProvider {
//    @State var workout1: Workout = Workout(title: "Leg Day #1 - Jeff Nippard", color: Color.workout.red)
//
    static var previews: some View {
        WorkoutTileView(workout: Workout(title: "Leg Day #1 - Jeff Nippard", color: Color.workout.red))
    }
}

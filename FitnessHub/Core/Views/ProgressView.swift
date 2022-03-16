//
//  ProgressView.swift
//  FitnessHub
//
//  Created by CS on 3/12/22.
//

import SwiftUI

struct ProgressView: View {
    var body: some View {
        ZStack {
            NavigationView {
                VStack(spacing: 30) {
                    Image(systemName: "gear")
                        .foregroundColor(Color.gray)
                        .font(.system(size: 100))
                    Text("This page is a work in progress")
                        .foregroundColor(.gray)
                        .font(.title)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                }
                .navigationBarTitle("Progress")
                .navigationBarItems(
                    leading: NavigationLink(
                        destination: WorkoutsView(),
                        label: {
                            Image(systemName: "line.3.horizontal")
                        }))
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}

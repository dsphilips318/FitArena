//
//  MainView.swift
//  FitnessHub
//
//  Created by CS on 1/17/22.
//

import SwiftUI

struct MainView: View {
    
    init() {
        let appearance = UINavigationBarAppearance()

        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(Color.theme.primary)
        appearance.titleTextAttributes = [.foregroundColor: UIColor(Color.theme.secondary)]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor(Color.theme.secondary)]
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().tintColor = UIColor(Color.theme.secondary)
    }
    
    @State private var tabSelection: TabBarItem = .home
    
    var body: some View {
        CustomTabBarContainerView(selection: $tabSelection) {
            HomeView()
                .tabBarItem(tab: .home, selection: $tabSelection)
            
            WorkoutsView()
                .tabBarItem(tab: .workout, selection: $tabSelection)
            
            CalendarView()
                .tabBarItem(tab: .calendar, selection: $tabSelection)
            
            ProgressView()
                .tabBarItem(tab: .progress, selection: $tabSelection)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView()
            
            MainView()
                .preferredColorScheme(.dark)
        }
    }
}

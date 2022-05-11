//
//  CustomTabBarView.swift
//  FitArena
//
//  Created by CS on 3/13/22.
//

import SwiftUI

struct CustomTabBarView: View {
    
    let tabs: [TabBarItem]
    @Binding var selection: TabBarItem
    @State var localSelection: TabBarItem
    
    var body: some View {
        HStack {
            ForEach(tabs, id: \.self) { tab in
                tabView(tab: tab)
                    .onTapGesture {
                        switchToTab(tab: tab)
                    }
            }
        }
        .padding(2)
        .background(Color.blue.ignoresSafeArea(edges: .bottom))
        .onChange(of: selection, perform: { value in
            withAnimation(.easeInOut){
                localSelection = value
            }
        })
        
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [
        .home, .workout, .calendar, .progress
    ]
    
    static var previews: some View {
        VStack {
            Spacer()
            CustomTabBarView(tabs: tabs, selection: .constant(tabs.first!), localSelection: tabs.first!)
        }
    }
}

extension CustomTabBarView {
    
    private func tabView(tab: TabBarItem) -> some View {
        VStack {
            Image(systemName: tab.iconName)
                .font(.title2)
            Text(tab.title)
                .font(.system(size: 10, weight: .semibold, design: .rounded))
        }
        .foregroundColor(localSelection == tab ? Color.theme.secondary : Color.white)
        .padding(.top, 8)
        .frame(maxWidth: .infinity)
        //.background(selection == tab ? Color.theme.secondary.opacity(0.2) : Color.clear)
        //.cornerRadius(10)
    }
    
    private func switchToTab(tab: TabBarItem) {
        selection = tab
    }
}



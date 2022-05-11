//
//  CalendarView.swift
//  FitArena
//
//  Created by CS on 3/12/22.
//

import SwiftUI

struct CalendarView: View {
    
    @StateObject private var vm: CalendarViewModel
    
    init(){
        _vm = StateObject(wrappedValue: CalendarViewModel())
    }
    
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
                .navigationBarTitle("Calendar", displayMode: .inline)
                .navigationBarItems(
                    leading: SideMenuButtonView(menuOpened: $vm.menuOpened),
                    trailing:
                        NavigationLink(
                            destination: WorkoutsView(),
                            label: {
                                Image(systemName: "plus")
                            }))
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}

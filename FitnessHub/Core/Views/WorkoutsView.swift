//
//  WorkoutsView.swift
//  FitnessHub
//
//  Created by CS on 3/12/22.
//

import SwiftUI

struct WorkoutsView: View {
    
    @StateObject private var vm: WorkoutsViewModel
    
    init(){
        _vm = StateObject(wrappedValue: WorkoutsViewModel())
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                workoutview()
                    .navigationBarTitle("Workouts", displayMode: .inline)
                    .navigationBarItems(
                        leading: SideMenuButtonView(menuOpened: $vm.menuOpened),
                        trailing:
                            NavigationLink(
                                destination: ProgressView(),
                                label: {
                                    Image(systemName: "plus")
                                }))
            } //: Scroll View
        } //: NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    } //: body
} //: WorkoutsView

extension WorkoutsView {
    func workoutview() -> some View {
        VStack {
            SearchBarView(searchText: $vm.searchText)
            
            HStack{
                Text("Created Workout Templates")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Text("All")
            }
            .padding(10)
            
            Divider()
                .background(Color.theme.secondary)
                .frame(width: 350, alignment: .center)
            
            HStack{
                Text("Shared With You")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Text("All")
            }
            .padding(10)
            
            Divider()
                .background(Color.theme.secondary)
                .frame(width: 350, alignment: .center)
            
            HStack{
                Text("Recently Completed")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Text("All")
            }
            .padding(10)

        } //: VStack
    }
}

struct WorkoutsView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutsView()
    }
}

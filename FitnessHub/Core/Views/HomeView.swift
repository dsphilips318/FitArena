//
//  HomeView.swift
//  FitnessHub
//
//  Created by CS on 3/12/22.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var vm: HomeViewModel
    
    init(){
        _vm = StateObject(wrappedValue: HomeViewModel())
    }
    
    var body: some View {
            ZStack {
                NavigationView {
                    ScrollView {
                        homeview()
                            .navigationBarTitle("FitnessHub")
                            .navigationBarItems(
                                leading: SideMenuButtonView(menuOpened: $vm.menuOpened),
                                trailing:
                                    NavigationLink(
                                        destination: WorkoutsView(),
                                        label: {
                                            HStack{
                                                Text("User")
                                                Image(systemName: "person.crop.circle")
                                            }
                                        }))
                        
                        
                    } //: Scroll View
                    
                } //: ZStack
                
                SideMenuBarView(
                    width: UIScreen.main.bounds.width/1.6,
                    menuOpened: vm.menuOpened,
                    toggleMenu: toggleMenu)
            } //: NavigationView
            
//            .navigationBarModifier(
//                backgroundColor: UIColor(Color.theme.primary),
//                foregroundColor: UIColor(Color.theme.secondary),
//                largeTextAttributesColor: UIColor(Color.theme.secondary),
//                tintColor: UIColor(Color.white))
    } //: body
} //: HomeView

extension HomeView {
    func homeview() -> some View {
        VStack {
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

        } //: VStack
    } //: homeview
    
    func toggleMenu() {
        vm.menuOpened.toggle()
    }
} //: extension

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
            
            HomeView()
                .preferredColorScheme(.dark)
        }
    }
}

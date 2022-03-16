//
//  HomeView.swift
//  FitnessHub
//
//  Created by CS on 3/12/22.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
            NavigationView {
                ScrollView {
                    homeview()
                    .navigationBarTitle("FitnessHub")
                    .navigationBarItems(
                        leading: NavigationLink(
                            destination: WorkoutsView(),
                            label: {
                                Image(systemName: "line.3.horizontal")
                            }),
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
            } //: NavigationView
            
            //.navigationViewStyle(StackNavigationViewStyle())
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
} //: extension

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

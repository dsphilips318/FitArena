//
//  SideMenuContentView.swift
//  FitArena
//
//  Created by CS on 3/16/22.
//

import SwiftUI

struct SideMenuContentView: View {
    
    @EnvironmentObject var authenticationService: AuthenticationService
    
    var tabs: [TabBarItem] = [.home, .workout, .calendar, .progress, .settings]
    
    var body: some View {
        ZStack{
            Color.theme.background.ignoresSafeArea()
            
            VStack {
                Image(systemName: "person.crop.circle")
                    .foregroundColor(Color.theme.primary)
                    .font(.system(size: 100))
                    .padding()
                    .padding(.top, 50)
                
                Text("User Name Here")
                    .foregroundColor(Color.theme.primary)
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding()
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Text("View Profile")
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        authenticationService.signOutUser()
                    }, label: {
                        Text("Sign Out")
                    })
                    
                    Spacer()
                }
                .padding()
                .foregroundColor(Color.theme.primary)
                
                Divider()
                    .frame(width: 200, alignment: .center)
                    .frame(maxHeight: 2)
                    .background(Color.theme.secondary)
                
                
                VStack (alignment: .leading) {
                    ForEach(tabs) { tab in
                        tabButton(tab: tab)
                    } //ForEach
                } //: VStack
                
                Spacer()
            } //: VStack
        } //: ZStack
        .ignoresSafeArea()
    } //: body
} //: SideMenuContentView

extension SideMenuContentView {
    
    func tabButton(tab: TabBarItem) -> some View {
        return Button(action: {
            tab.screen
        }, label: {
            HStack {
                Image(systemName: tab.iconName)
                    .resizable()
                    .frame(width: 30, height: 30)
                
                
                Text(tab.title)
                    .fontWeight(.bold)
                    .font(.title3)
                    .frame(height: 40)
                    .padding(.horizontal)
                
                Spacer()
            } //: HStack
            .foregroundColor(Color.theme.primary)
            .padding(5)
            .padding(.horizontal)
        })
    }
}


struct SideMenuContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SideMenuContentView()
            
            SideMenuContentView()
                .preferredColorScheme(.dark)
        }
    }
}

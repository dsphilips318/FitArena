//
//  SideMenuBarView.swift
//  FitnessHub
//
//  Created by CS on 3/16/22.
//

import SwiftUI

struct SideMenuBarView: View {
    
    let width: CGFloat
    let menuOpened: Bool
    let toggleMenu: () -> Void
    @State var menuContent = SideMenuContentView()
    
    var body: some View {
        ZStack {
            //Dimmed bacground view
            if menuOpened {
                withAnimation(Animation.easeInOut.delay(0.25), {
                    GeometryReader { _ in
                        EmptyView()
                    }
                    .background(Color.gray.opacity(0.25))
                    .onTapGesture {
                        self.toggleMenu()
                    } //: onTapGesture
                }) //: withAnimation
            } //: if menuOpened
            
            
            
            //Menu Content
            HStack {
                withAnimation(.easeIn, {
                    menuContent
                        .frame(width: width)
                        .offset(x: menuOpened ? 0 : -width)
                })
                
                Spacer()
            } //: HStack
        } //: ZStack
        .ignoresSafeArea()
    } //: body
} //: SideMenuBarView

//struct SideMenuBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        SideMenuBarView(width: 370, menuOpened: true, toggleMenu: ###)
//    }
//}

//
//  SideMenuButtonView.swift
//  FitnessHub
//
//  Created by CS on 3/16/22.
//

import SwiftUI

struct SideMenuButtonView: View {
    
    @Binding var menuOpened: Bool
    
    var body: some View {
        Button(action: {
            menuOpened.toggle()
        }, label: {
            Image(systemName: "line.3.horizontal")
                .padding(.trailing)
                .padding(.vertical)
                .font(.headline)
                .foregroundColor(Color.theme.secondary)
            
        })
    }
}

struct SideMenuButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuButtonView(menuOpened: .constant(false))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

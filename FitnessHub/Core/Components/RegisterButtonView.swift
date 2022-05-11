//
//  RegisterButtonView.swift
//  FitArena
//
//  Created by CS on 3/25/22.
//

import SwiftUI

struct RegisterButtonView: View {
    
    var title: String
    var minWidth: CGFloat
    
    var body: some View {
        Text(title)
            .foregroundColor(Color.theme.primary)
            .font(.headline)
            .padding()
            .padding(.horizontal, 50)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.theme.secondary)
                    .shadow(color: Color.theme.primary, radius: 3, x: 7, y: 7)
                    .frame(minWidth: minWidth)
            )
    }
}

struct RegisterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterButtonView(title: "Sign Up", minWidth: 250)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

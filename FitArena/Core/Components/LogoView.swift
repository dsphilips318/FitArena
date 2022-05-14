//
//  LogoView.swift
//  FitArena
//
//  Created by CS on 4/19/22.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        Text("FitnessHub")
            .foregroundColor(Color.theme.secondary)
            .font(.largeTitle)
            .fontWeight(.bold)
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}

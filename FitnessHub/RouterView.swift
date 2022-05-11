//
//  RouterView.swift
//  FitArena
//
//  Created by CS on 4/19/22.
//

import SwiftUI

struct RouterView: View {
    @EnvironmentObject var authenticationService: AuthenticationService
    
    var body: some View {
        if authenticationService.isAuthenticated {
            MainView()
        } else {
            PreRegistrationView()
        }
    }
}

struct RouterView_Previews: PreviewProvider {
    static var previews: some View {
        RouterView()
    }
}

//
//  PreRegistrationView.swift
//  FitnessHub
//
//  Created by CS on 3/24/22.
//

import SwiftUI

struct PreRegistrationView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.theme.primary
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    
                    LogoView()
                    
                    Spacer()
                    
                    Text("Welcome to FitnessHub!!! \n\n Let's Get Started On Your Fitness Journey!")
                        .foregroundColor(Color.theme.secondary)
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    registrationButtons
                    
                    Spacer()
                } //: VStack
            } //: ZStack
            .navigationBarHidden(true)
        }
    } //: body
}//: PreRegistrationView

extension PreRegistrationView {
    var registrationButtons: some View {
        VStack(spacing: 20){
            Text("New to FitnessHub?")
                .foregroundColor(Color.theme.secondary)
                .font(.title2)
                .fontWeight(.bold)
            
            NavigationLink(destination: SignUpInitialView(), label: {
                RegisterButtonView(title: "Sign Up", minWidth: 250)
            })
            
            
            Text("Already a member?")
                .foregroundColor(Color.theme.secondary)
                .font(.title2)
                .fontWeight(.bold)
            
            NavigationLink(destination: LogInInitialView(), label: {
                RegisterButtonView(title: "Log In", minWidth: 250)
            })

        }//: VStack
    } //: registrationButtons
} //: extension

struct PreRegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        PreRegistrationView()
    }
}

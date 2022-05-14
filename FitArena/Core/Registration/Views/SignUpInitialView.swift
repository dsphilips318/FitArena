//
//  SignUpInitialView.swift
//  FitnessHub
//
//  Created by CS on 3/24/22.
//

import SwiftUI

struct SignUpInitialView: View {
    
    @EnvironmentObject var authenticationService: AuthenticationService
    
    var body: some View {
        ZStack {
            Color.theme.background
            
            VStack (spacing: 15) {
                Text("Welcome!!")
                    .foregroundColor(Color.theme.mainText)
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .padding()
                                
                usernameSignUp
                
                orDivider
                
                thirdPartyOptions
                
                Spacer()
                
                
            }
        }
    }
}

extension SignUpInitialView {
    
    var usernameSignUp: some View {
        VStack(spacing: 15){
            CustomTextFieldView(minWidth: 300, placeholder: "Username", text: $authenticationService.userEmail, isPassword: false)
            
            CustomTextFieldView(minWidth: 300, placeholder: "Password", text: $authenticationService.password, isPassword: true)
            
            CustomTextFieldView(minWidth: 300, placeholder: "Confirm Password", text: $authenticationService.confirmedPassword, isPassword: true)
            
            Button(action: {
                authenticationService.signUpUser(userEmail: authenticationService.userEmail, userPassword: authenticationService.password)
            }, label: {
                RegisterButtonView(title: "Sign Up", minWidth: 300)
            })
            .disabled(!authenticationService.signUpProcessing && !authenticationService.userEmail.isEmpty && !authenticationService.password.isEmpty && !authenticationService.confirmedPassword.isEmpty && authenticationService.password == authenticationService.confirmedPassword ? false : true)
            
            if !authenticationService.errorMessage.isEmpty {
                Text("Failed creating account: \(authenticationService.errorMessage)")
                    .padding()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.red)
            }
            
            
        }
    }
    
    // Custom Divider
    var orDivider: some View{
        ZStack{
            Divider()
                .frame(width: 300)
                .frame(maxHeight: 1.5)
                .background(Color.theme.secondaryText)
            
            Text("or")
                .foregroundColor(Color.theme.mainText)
                .padding()
                .background(Color.theme.background)
            
        }
    }
    
    // Other Sign Up Options
    var thirdPartyOptions: some View {
        VStack(spacing: 20) {
            RegisterButtonView(title: "Sign Up with Apple", minWidth: 325)
            
            RegisterButtonView(title: "Sign Up with Google", minWidth: 325)
            
            RegisterButtonView(title: "Sign Up with Facebook", minWidth: 325)
        }
        
        
    }
}

struct SignUpInitialView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpInitialView()
    }
}

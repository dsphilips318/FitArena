//
//  LogInInitialView.swift
//  FitnessHub
//
//  Created by CS on 3/25/22.
//

import SwiftUI

struct LogInInitialView: View {
    
    @EnvironmentObject var authenticationService: AuthenticationService
    
    var body: some View {
        ZStack {
            Color.theme.background
            
            VStack (spacing: 20) {
                Text("Welcome Back!!")
                    .foregroundColor(Color.theme.mainText)
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .padding()
                                
                usernameLogIn
                
                orDivider
                
                thirdPartyOptions
                
                Spacer()
                
                
            }
        }
    }
}

extension LogInInitialView {
    
    var usernameLogIn: some View {
        VStack(spacing: 15){
            CustomTextFieldView(minWidth: 300, placeholder: "Username", text: $authenticationService.userEmail, isPassword: false)
            
            CustomTextFieldView(minWidth: 300, placeholder: "Password", text: $authenticationService.password, isPassword: true)
            
            Button(action: {
                authenticationService.logInUser(userEmail: authenticationService.userEmail, userPassword: authenticationService.password)
            }, label: {
                RegisterButtonView(title: "Log In", minWidth: 300)
            })
            .disabled(!authenticationService.logInProcessing && !authenticationService.userEmail.isEmpty && !authenticationService.password.isEmpty ? false : true)
            
            if !authenticationService.errorMessage.isEmpty {
                Text("Failed creating account: \(authenticationService.errorMessage)")
                    .padding()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.red)
            }
            
        }
    }
    
    var orDivider: some View{
        ZStack{
            Divider()
                .frame(width: 300)
                .frame(maxHeight: 1.5)
                .background(Color.theme.placeholder)
            
            Text("or")
                .foregroundColor(Color.theme.mainText)
                .padding()
                .background(Color.theme.background)
            
        }
    }
    
    var thirdPartyOptions: some View {
        VStack(spacing: 20) {
            RegisterButtonView(title: "Continue with Apple", minWidth: 325)
            
            RegisterButtonView(title: "Continue with Google", minWidth: 325)
            
            RegisterButtonView(title: "Continue with Facebook", minWidth: 325)
        }
        
        
    }
}

    

struct LogInInitialView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LogInInitialView()
        }
    }
}

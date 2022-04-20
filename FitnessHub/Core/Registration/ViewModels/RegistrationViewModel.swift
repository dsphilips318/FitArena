//
//  RegistrationViewModel.swift
//  FitnessHub
//
//  Created by CS on 4/18/22.
//

import Foundation
import SwiftUI
import Firebase
import Combine

class RegistrationViewModel: ObservableObject {
    @Published var userEmail: String = ""
    @Published var password: String = ""
    @Published var confirmedPassword: String = ""
    
    @Published var signUpErrorMessage: String = ""
    @Published var signUpProcessing: Bool = false
    
    @Published var logInErrorMessage: String = ""
    @Published var logInProcessing: Bool = false
    
    @Published var signOutProcessing: Bool = false

    func signUpUser(userEmail: String, userPassword: String){
        
        signUpProcessing = true
        
        Auth.auth().createUser(withEmail: userEmail, password: userPassword) { authResult, error in
            guard error == nil else {
                self.signUpErrorMessage = error!.localizedDescription
                self.signUpProcessing = false
                return
            }
            
            switch authResult {
            case .none:
                print("Could not create account.")
                self.signUpProcessing = false
            case .some(_):
                print("User created")
            }
        
        
        } //: Auth.auth()
    } //: func signUpUser()
    
    func logInUser(userEmail: String, userPassword: String){
        
        logInProcessing = true
        
        Auth.auth().signIn(withEmail: userEmail, password: userPassword) { authResult, error in
            guard error == nil else {
                self.logInErrorMessage = error!.localizedDescription
                self.logInProcessing = false
                return
            }
            
            switch authResult {
            case .none:
                print("Could not sign in user.")
                self.logInProcessing = false
            case .some(_):
                print("User signed in")
                self.logInProcessing = false
            }
        
        
        } //: Auth.auth()
    } //: func logInUser()
    
    func signOutUser() {
        signOutProcessing = true
        let firebaseAuth = Auth.auth()
        do {
          try firebaseAuth.signOut()
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
            signOutProcessing = true
        }
    } //: func signOutUser()
    
} //: SignUpViewModel

//
//  AuthenticationService.swift
//  FitArena
//
//  Created by CS on 4/19/22.
//

import Foundation
import Combine
import Firebase
import FirebaseAuth
import FirebaseAuthCombineSwift

class AuthenticationService: ObservableObject {
    @Published var user: User?
    @Published var isAuthenticated: Bool = false
    @Published var errorMessage: String = ""
    
    @Published var userEmail: String = ""
    @Published var password: String = ""
    @Published var confirmedPassword: String = ""

    
    @Published var signUpProcessing: Bool = false
    @Published var logInProcessing: Bool = false
    @Published var signOutProcessing: Bool = false
    
    private var handle: AuthStateDidChangeListenerHandle?
    
    static let instance = AuthenticationService()
    
    private init() {
        print("Authentication Service initialized")
        registerStateListener()
    }
    
    deinit {
        guard let handle = handle else { return }
        Auth.auth().removeStateDidChangeListener(handle)
    }
    
    func registerStateListener() {
        handle = Auth.auth().addStateDidChangeListener { auth, user in
            if let user = user {
                self.user = user
                self.isAuthenticated = true
                print("\(user.uid) has signed in.")
            } else {
                self.user = user
                self.isAuthenticated = false
                print("User N/A")
            }
        }
    } //: func registerStateListener()
    
    func signUpUser(userEmail: String, userPassword: String){
        
        signUpProcessing = true
        
        Auth.auth().createUser(withEmail: userEmail, password: userPassword) { authResult, error in
            guard error == nil else {
                self.errorMessage = error!.localizedDescription
                self.signUpProcessing = false
                return
            }
            
            switch authResult {
            case .none:
                print("Could not create account.")
                self.signUpProcessing = false
            case .some(_):
                print("User created")
                self.signUpProcessing = false
            } //: switch authResult
        } //: Auth.auth()
    } //: func signUpUser()
    
    func logInUser(userEmail: String, userPassword: String){
        
        logInProcessing = true
        
        Auth.auth().signIn(withEmail: userEmail, password: userPassword) { authResult, error in
            guard error == nil else {
                self.errorMessage = error!.localizedDescription
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
            } //: switch authResult
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

} //: Class AuthService

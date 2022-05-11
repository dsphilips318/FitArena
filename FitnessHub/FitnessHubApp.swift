//
//  FitArenaApp.swift
//  FitArena
//
//  Created by Daniel Shola-Philips on 1/14/22.
//

import SwiftUI
import Firebase

final class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct FitArenaApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var authenticationService: AuthenticationService = AuthenticationService.instance
    
    var body: some Scene {
        WindowGroup {
            RouterView().environmentObject(authenticationService)
        }
    }
}

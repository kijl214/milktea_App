//
//  GoogleSignInApp.swift
//  MilkTeaApp
//
//  Created by itst on 9/1/2023.
//

import SwiftUI
import Firebase
import GoogleSignIn

@main
struct GoogleSignInApp: App{
    @UIApplicationDelegateAdaptor(AppDelegate2.self) var appDelegate2
    var body: some Scene {
        WindowGroup{
            ContentView()
                .environmentObject(SignUpViewModel())
        }
    }
}

class AppDelegate2: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        return true
    }
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return GIDSignIn.sharedInstance.handle(url)
    }
    
    
}


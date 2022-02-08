//
//  LoginScreenApp.swift
//  LoginScreen
//
//  Created by Deniz on 22.12.2021.
//

import SwiftUI
import Firebase
@main
struct SwiftUIFirebaseAuthApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            let viewModel = AppViewModel()
            ContentView()
                .environmentObject(viewModel)
        }
    }
}

class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?)-> Bool {
        FirebaseApp.configure()
        return true
    }
}
 


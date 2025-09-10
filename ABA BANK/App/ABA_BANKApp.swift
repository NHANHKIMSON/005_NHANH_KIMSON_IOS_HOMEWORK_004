//
//  ABA_BANKApp.swift
//  ABA BANK
//
//  Created by Apple on 9/5/25.
//

import SwiftUI

@main
struct ABA_BANKApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @StateObject var user: User = User()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(user)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    static var orientationLock = UIInterfaceOrientationMask.portrait
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return AppDelegate.orientationLock
    }
}
#Preview{
    ContentView()
        .environmentObject(User())
}
    

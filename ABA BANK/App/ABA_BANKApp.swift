//
//  ABA_BANKApp.swift
//  ABA BANK
//
//  Created by Apple on 9/5/25.
//

import SwiftUI

@main
struct ABA_BANKApp: App {
    @StateObject var user: User = User()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(user)
        }
    }
}
#Preview{
    ContentView()
        .environmentObject(User())
}
    

// SwiftUIFirebaseChatApp.swift
import SwiftUI
import Firebase

@main
struct SwiftUIFirebaseChatApp: App {
    
    @State private var isLoggedIn = false
    
    var body: some Scene {
        WindowGroup {
            if isLoggedIn {
                MainMessagesView()
            } else {
                LoginView(didCompleteLoginProcess: {
                    isLoggedIn = true  // ✅ triggers SwiftUI to swap the view
                })
            }
        }
    }
}

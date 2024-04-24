//
//  Stream_MusicApp.swift
//  Stream Music
//
//  Created by Temiloluwa Akisanya on 21/04/2024.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
}

@main
struct Stream_MusicApp: App {
    // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @State private var audioPlayer = AudioPlayerViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(audioPlayer)
        }
    }
}

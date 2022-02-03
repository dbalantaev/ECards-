//
//  ECards_App.swift
//  ECards!
//
//  Created by Дмитрий Балантаев on 03.02.2022.
//

import SwiftUI
import Firebase
import FirebaseAuth

@main
struct ECards_App: App {
    
    init() {
        FirebaseApp.configure()
      }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

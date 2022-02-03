//
//  ContentView.swift
//  ECards!
//
//  Created by Дмитрий Балантаев on 03.02.2022.
//

import SwiftUI

extension UserDefaults {
    var welcomeScreenShown: Bool {
        get {
            return(UserDefaults.standard.value(forKey: "welcomeScreenShown") as? Bool) ?? false
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: "welcomeScreenShown")
        }
    }
}

struct ContentView: View {
    
    @State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    
    var body: some View {
        VStack {
            if status {
                WelcomeScreenToggle()
            } else {
                SignIn()
            }
        }
        .onAppear {
                NotificationCenter
                .default
                .addObserver(forName: NSNotification.Name("statusChange"), object: nil, queue: .main) { (_) in
                    let status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
                    self.status = status
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct WelcomeScreenToggle: View {
    
    var body: some View {
        if UserDefaults.standard.welcomeScreenShown {
            MenuView()
        } else {
            FirstOpenView()
        }
    }
}

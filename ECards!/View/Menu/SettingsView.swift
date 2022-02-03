//
//  SettingsView.swift
//  ECards!
//
//  Created by Дмитрий Балантаев on 03.02.2022.
//

import SwiftUI

struct SettingsView: View {
    
    @State var previewIndex = 0
    
    var body: some View {
            Form {
                Section {
                    Text("Email для обратной связи: ecardsmanager@gmail.com")
                }
                Button(action: {
                    UserDefaults.standard.set(false, forKey: "status")
                    NotificationCenter.default.post(name: NSNotification.Name("statusChange"), object: nil)
                }) {
                    Text("Выйти")
                }
            }.navigationTitle("Настройки")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

//
//  FirstOpenView.swift
//  ECards!
//
//  Created by Дмитрий Балантаев on 03.02.2022.
//

import SwiftUI

struct FirstOpenView: View {
    
    @AppStorage("welcomeScreenShown")
    var welcomeScreenShown: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Text("Привет!")
                        .font(.title)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .frame(width: 366.0, height: 5)
                        .offset(y: 300)
                        .padding(.all)
                    Text(" Добро пожаловать в ECards!")
                        .font(.title)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .frame(width: 366.0, height: 5)
                        .offset(y: 300)
                        .padding(.all)
                    Spacer()
                    NavigationLink(destination: FirstOpenView_2()) {
                        VStack {
                            Text("Далее")
                                .foregroundColor(.black)
                                .frame(height: 55)
                                .padding(.horizontal, 75)
                                .background(Color.yellow)
                                .cornerRadius(26)
                                .padding(.horizontal, 50)
                        }
                    }.navigationBarHidden(true)
                        .offset(y: -25)
                    Image("Artboard Copy 7")
                            .resizable()
                            .frame(width: 45, height: 9, alignment: .center)
                            .padding(.bottom)
                }
            }.onAppear(perform: {
                UserDefaults.standard.welcomeScreenShown = true
            })
        }.navigationBarHidden(true)
    }
}

struct FirstOpenView_Previews: PreviewProvider {
    static var previews: some View {
        FirstOpenView()
    }
}

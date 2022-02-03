//
//  MenuView.swift
//  ECards!
//
//  Created by Дмитрий Балантаев on 03.02.2022.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("backgr")
                    .resizable(resizingMode: .tile)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                     
                        Image("ECards! with no shadow")
                            .resizable()
                            .frame(width: 250, height: 72, alignment: .center)
                            .padding(.horizontal, 1)
                            .padding([.top, .leading, .trailing], 0.0)
                            .offset(y: 80)
                            .shadow(color: .black, radius: 10, x: 10, y: 10)
                        NavigationLink(destination: SettingsView()) {
                            Image(systemName: "gearshape.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                        }.offset(x: 160, y: -50)
                    
                    Spacer()
                    VStack {
                        NavigationLink(destination: GameView()) {
                            Text("Сыграть сейчас")
                                .multilineTextAlignment(.center)
                                .frame(height: 58)
                                .lineLimit(1)
                                .padding(.horizontal, 60)
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(50)
                                .padding(.horizontal, 10)
                                .padding(.vertical)
                                .shadow(color: .black, radius: 20, x: 5, y: 5)
                        }.navigationBarHidden(true)
                        NavigationLink(destination: WordsView()) {
                            Text("Посмотреть слова еще раз")
                                .foregroundColor(.white)
                                .padding(.all)
                        }.navigationBarHidden(true)
                    }
                }
            }
        }.navigationBarHidden(true)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

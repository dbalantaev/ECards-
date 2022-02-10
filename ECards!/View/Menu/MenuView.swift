//
//  MenuView.swift
//  ECards!
//
//  Created by Дмитрий Балантаев on 03.02.2022.
//

import SwiftUI

struct MenuView: View {
    
    @State private var game = false
    @State private var words = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("3232")
                    .resizable(resizingMode: .tile)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    HStack {
                        Text("ECards!")
                            .fontWeight(.heavy)
                            .font(.largeTitle)
                            .padding(.top, 30)
                            .padding()
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 20, x: 5, y: 5)
                        Spacer()
                        NavigationLink(destination: SettingsView()) {
                            Image(systemName: "gearshape.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 20, x: 5, y: 5)
                        }
                        .padding(.top, 30)
                        .padding()
                    }
                    Spacer()
                    VStack {
                        Button(action: {
                            self.game.toggle()
                        }) {
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
                        }.fullScreenCover(isPresented: $game) {
                            GameView()
                        }
                        Button(action: {
                            self.words.toggle()
                        }) {
                            Text("Посмотреть слова")
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 5, x: 5, y: 5)
                                .padding(.all)
                        }.sheet(isPresented: $words) {
                            WordsView()
                        }
                    }
                }
            }.navigationBarHidden(true)
        }.navigationBarHidden(true)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

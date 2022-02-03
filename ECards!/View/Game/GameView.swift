//
//  GameView.swift
//  ECards!
//
//  Created by Дмитрий Балантаев on 03.02.2022.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Text("hi -")
                    .font(.largeTitle)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .frame(width: 196, height: 327)
                    .foregroundColor(.black)
                    .background(Color.yellow)
                    .cornerRadius(49)
                    .shadow(color: .black, radius: 10, x: 5, y: 5)
                Text("9/9")
                Text("привет")
                        .frame(width: 130, height: 50, alignment: .center)
                        .foregroundColor(.black)
                        .background(Color.green)
                        .cornerRadius(13)
                        .offset(y: 5)
                        .shadow(color: Color.black, radius: 5, x: 5, y: 5)
                Text("как дела?")
                        .frame(width: 130, height: 50, alignment: .center)
                        .foregroundColor(.black)
                        .background(Color.red)
                        .cornerRadius(13)
                        .offset(y: 5)
                Text("пока")
                        .frame(width: 130, height: 50, alignment: .center)
                        .foregroundColor(.black)
                        .background(Color.red)
                        .cornerRadius(13)
                        .offset(y: 5)
                Spacer()
                NavigationLink(destination: MenuView()) {
                    VStack {
                        Text("Закончить")
                            .foregroundColor(.black)
                            .frame(height: 55)
                            .padding(.horizontal, 75)
                            .background(Color.yellow)
                            .cornerRadius(26)
                            .padding(.horizontal, 50)
                    }
                }.navigationBarHidden(true)
                    .offset(y: -25)
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}

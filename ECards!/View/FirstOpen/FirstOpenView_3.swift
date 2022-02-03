//
//  FirstOpenView_3.swift
//  ECards!
//
//  Created by Дмитрий Балантаев on 03.02.2022.
//

import SwiftUI

struct FirstOpenView_3: View {
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    Text("Каждый день тебе будут даваться слова, разбитые на группы по темам, которые ты должен запомнить.")
                        .font(.title)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .frame(width: 360.0)
                        .padding()
                    Text("И в течении дня тебе придет учедомление о том, что пора вспомнить слова и сыграть в карточки!")
                        .font(.title)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .frame(width: 360.0, height: 180)
                        .padding()
                    Image("Alert")
                        .resizable()
                        .frame(width: 370, height: 63, alignment: .center)
                        .shadow(color: .black, radius: 30, x: 10, y: 10)
                }
                Spacer()
                NavigationLink(destination: WordsView()) {
                    VStack {
                        Text("Начать")
                            .foregroundColor(.black)
                            .frame(height: 55)
                            .padding(.horizontal, 75)
                            .background(Color.yellow)
                            .cornerRadius(26)
                            .padding(.horizontal, 50)
                    }
                }.navigationBarHidden(true)
                    .offset(y: -25)
                Image("Artboard Copy 7 3")
                        .resizable()
                        .frame(width: 45, height: 9, alignment: .center)
                        .padding(.bottom)
            }
        }
    }
}

struct FirstOpenView_3_Previews: PreviewProvider {
    static var previews: some View {
        FirstOpenView_3()
    }
}

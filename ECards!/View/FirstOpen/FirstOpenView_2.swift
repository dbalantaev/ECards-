//
//  FirstOpenView_2.swift
//  ECards!
//
//  Created by Дмитрий Балантаев on 03.02.2022.
//

import SwiftUI

struct FirstOpenView_2: View {
    var body: some View {
        ZStack {
            VStack {
                Text("Это приложение, в котором можно учить английский по карточкам")
                    .font(.title)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .frame(width: 366.0, height: 110)
                    .padding()
                Spacer()
                VStack {
                    Text("Pineapple")
                        .font(.title)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .frame(width: 150, height: 220)
                        .foregroundColor(.black)
                        .background(Color.yellow)
                        .cornerRadius(30)
                        .shadow(color: .black, radius: 10, x: 5, y: 5)
                    Text("Ананас")
                            .frame(width: 120, height: 40, alignment: .center)
                            .foregroundColor(.black)
                            .background(Color.green)
                            .cornerRadius(13)
                            .offset(y: 5)
                            .shadow(color: Color.black, radius: 5, x: 5, y: 5)
                    Text("Груша")
                            .frame(width: 120, height: 40, alignment: .center)
                            .foregroundColor(.black)
                            .background(Color.red)
                            .cornerRadius(13)
                            .offset(y: 5)
                    Text("Арбуз")
                            .frame(width: 120, height: 40, alignment: .center)
                            .foregroundColor(.black)
                            .background(Color.red)
                            .cornerRadius(13)
                            .offset(y: 5)
                }
                Spacer()
                NavigationLink(destination: FirstOpenView_3()) {
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
                Image("Artboard Copy 7 2")
                        .resizable()
                        .frame(width: 45, height: 9, alignment: .center)
                        .padding(.bottom)
            }
        }
    }
}

struct FirstOpenView_2_Previews: PreviewProvider {
    static var previews: some View {
        FirstOpenView_2()
    }
}

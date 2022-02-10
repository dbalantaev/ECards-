//
//  WordsView.swift
//  ECards!
//
//  Created by Дмитрий Балантаев on 03.02.2022.
//

import SwiftUI

struct WordsView: View {
    @Environment(\.presentationMode) var wordsview
    
    var body: some View {
        ZStack {
            VStack {
                Text("Твои слова на сегодня:")
                    .font(.title)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .frame(width: 356.0, height: 40)
                    .padding()
                Spacer()
                VStack {
                    List {
                        Text("hi - привет")
                        Text("hello - здравстуйте, привет")
                        Text("sorry - извините")
                        Text("please - пожалуйста(прошу)")
                        Text("to please - угождать")
                        Text("thank you - спасибо")
                        Text("you are welcome - пожалуйста, не за что")
                        Text("what a pity - как жаль")
                        Text("(good)bye - до свидания")
                    }
                }
                Spacer()
                Button(action: {
                    wordsview.wrappedValue.dismiss()
                }) {
                    Text("Запомнил!")
                        .foregroundColor(.black)
                        .frame(height: 55)
                        .padding(.horizontal, 75)
                        .background(Color.yellow)
                        .cornerRadius(26)
                        .padding(.horizontal, 50)
                }
                .offset(y: -25)
            }
        }
    }
}

struct WordsView_Previews: PreviewProvider {
    static var previews: some View {
        WordsView()
    }
}

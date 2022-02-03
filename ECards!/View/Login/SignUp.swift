//
//  SignUp.swift
//  ECards!
//
//  Created by Дмитрий Балантаев on 03.02.2022.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct SignUp : View {
    
    @State var user = ""
    @State var pass = ""
    @State var message = ""
    @State var alert = false
    @Binding var show : Bool
    
    var body : some View {
        
        VStack {
            Text("Регистрация").fontWeight(.heavy).font(.largeTitle).padding([.top,.bottom], 20)
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text("Email")
                        .font(.headline)
                        .fontWeight(.light)
                        .foregroundColor(Color.init(.label).opacity(0.75))
                    HStack {
                        TextField("Введите email:", text: $user)
                        if user != "" {
                            Image("check")
                                .foregroundColor(Color.init(.label))
                        }
                    }
                    Divider()
                }.padding(.bottom, 15)
                VStack(alignment: .leading) {
                    Text("Пароль")
                        .font(.headline)
                        .fontWeight(.light)
                        .foregroundColor(Color.init(.label).opacity(0.75))
                    SecureField("Введите пароль:", text: $pass)
                    Divider()
                }
            }.padding(.horizontal, 6)
            Button(action: {
                signUpWithEmail(email: self.user, password: self.pass) { (verified, status) in
                    if !verified {
                        self.message = status
                        self.alert.toggle()
                    } else {
                        UserDefaults.standard.set(true, forKey: "status")
                        self.show.toggle()
                        NotificationCenter
                            .default
                            .post(name: NSNotification.Name("statusChange"), object: nil)
                    }
                }
            }) {
                Text("Регистрация")
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 120)
                    .padding()
            }.background(Color.black)
                .clipShape(Capsule())
                .padding(.top, 45)
        }.padding()
            .alert(isPresented: $alert) {
                Alert(title: Text("Error"), message: Text(self.message), dismissButton: .default(Text("Ok")))
        }
    }
}


func signInWithEmail(email: String,password : String,completion: @escaping (Bool,String)->Void) {
    Auth.auth().signIn(withEmail: email, password: password) { (res, err) in
        if err != nil {
            completion(false,(err?.localizedDescription)!)
            return
        }
        completion(true,(res?.user.email)!)
    }
}

func signUpWithEmail(email: String,password : String,completion: @escaping (Bool,String)->Void) {
    Auth.auth().createUser(withEmail: email, password: password) { (res, err) in
        if err != nil {
            completion(false,(err?.localizedDescription)!)
            return
        }
        completion(true,(res?.user.email)!)
    }
}

//
//  TestLoginView.swift
//  iTinder3.0
//
//  Created by алтынпончик on 5/17/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

struct TestLoginView: View {
    var loginPass: [String : String ] = [
            "Test" : "Test",
            "Dana" : "Banana",
            "Teo" : "Hurts"
        ]

        @State private var email = ""
        @State private var password = ""

        var body: some View {

            VStack {
                VStack(alignment: .center){
                    Text("iTinder")
                        .font(.largeTitle).foregroundColor(Color.green)
                    Image(systemName: "person.circle")
                        .font(.system(size: 100.0, weight: .light))
                        .foregroundColor(.green)
                        .padding(.bottom, 25)

                    TextField("Логин", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .shadow(radius: 2)
                        .padding(.bottom, 1)

                    SecureField("Пароль", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .shadow(radius: 2)

                    Button ("Войти") {
                    } .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 100, height: 40)
                        .background(Color.green)
                        .cornerRadius(5.0)
                        .padding(.top, 5)

                    VStack (alignment: .trailing){
                        HStack(alignment: .lastTextBaseline) {
                            Text("Новый пользователь?")
                            Button ("Создать аккаунт")  {

                            }
                        }.padding(.top, 5)
//                    VStack(alignment: .leading) {
//                        TextField("Логин", text: $email)
//                            .textFieldStyle(RoundedBorderTextFieldStyle())
//                            .shadow(radius: 2)
//                        SecureField("Пароль", text: $password)
//                            .textFieldStyle(RoundedBorderTextFieldStyle())
//                            .shadow(radius: 2)
//                        Button(action: {
//                            // action
//                        }) {
//                            Text("Forgot password?")
//                        }
//                    }.padding()
//                }.font(.headline)
//                .padding(.top, 5)
//
//                HStack(alignment: .center) {
//                    Button(action: {
//                        print("\(self.email) and \(self.password)")
//                    }) {
//                        Text("Войти")
//                    }
//                   // Spacer()
//                }
//                .padding(40)
//             //   .padding(.bottom, 50)
//    //            .background(
//    //            LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom)
//    //              .edgesIgnoringSafeArea(.all))
//                    Spacer()
//                    Button(action: {
//                        // action
//                    }) {
//                        Text("Зарегистрироваться")
//                    }
//                }.padding()
            }
                }
            }
        }
    }


struct TestLoginView_Previews: PreviewProvider {
    static var previews: some View {
        TestLoginView()
    }
}

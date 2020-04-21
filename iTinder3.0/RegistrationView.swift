//
//  RegistrationView.swift
//  iTinder3.0
//
//  Created by алтынпончик on 4/20/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
       
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
                }
               // Spacer()
            }
            .padding(40)
         //   .padding(.bottom, 50)
//            .background(
//            LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom)
//              .edgesIgnoringSafeArea(.all))

    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}

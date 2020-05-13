//
//  RegistrationView.swift
//  iTinder3.0
//
//  Created by алтынпончик on 4/20/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

struct RegistrationView: View {
    
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
                VStack(alignment: .leading) {
                    TextField("Логин", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .shadow(radius: 2)
                    SecureField("Пароль", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .shadow(radius: 2)
                    Button(action: {
                        // action
                    }) {
                        Text("Forgot password?")
                    }
                }.padding()
            }.font(.headline)
            .padding(.top, 5)
            
            HStack(alignment: .center) {
                Button(action: {
                    print("\(self.email) and \(self.password)")
                }) {
                    Text("Войти")
                }
                Spacer()
                Button(action: {
                    // action
                }) {
                    Text("Зарегистрироваться")
                }
            }.padding()
        }
    }
}


struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}

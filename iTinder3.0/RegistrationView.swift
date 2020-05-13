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
    // Design+Code tutorial
    @State private var showAlert = false
    @State private var alertMessage = "smthng went wrong"
    
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
                        Text("Forgot password?").font(.subheadline)
                    }
                }.padding()
            }.font(.headline)
            .padding(.top, 5)
            
            HStack(alignment: .center) {
                Button(action: {
                    // action
                }) {
                    Text("Зарегистрироваться")
                }
                Spacer()
                Button(action: {
                    self.showAlert = true
                    print("\(self.email) and \(self.password)")
                }) {
                    Text("Войти").foregroundColor(.black)
                }.padding(12)
                    .padding(.horizontal, 30)
                    .background(Color(.green))
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    .shadow(color: Color(.green).opacity(0.3), radius: 20, x: 0, y: 20)
                    .alert(isPresented: $showAlert) {
                        Alert(title: Text("Error"), message: Text(self.alertMessage), dismissButton: .default(Text("OK")))
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

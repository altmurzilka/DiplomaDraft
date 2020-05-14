//
//  AddNewTeam.swift
//  iTinder3.0
//
//  Created by алтынпончик on 5/15/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

// оно начало крашиться на этой вьюшке почему-то

struct AddNewTeam: View {
    @State private var enablePrivateCommand = false
    @State private var teamName = ""
    @State private var motto = ""
    @State private var participantsNumber = 1
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Название команды").font(.headline)) {
                    TextField("Log In", text: $teamName)
                    Toggle(isOn: $enablePrivateCommand) {
                        Text("Закрытая команда")
                    }
                }
                Section(header: Text("Девиз:").font(.headline)) {
                    TextField("Log In", text: $motto)
                }
                Section(header: Text("Количество участников").font(.headline)) {
                    Stepper(value: $participantsNumber, in: 1...12) {
                        Text("\(participantsNumber)")
                    }
                }
            }
            .navigationBarTitle(Text("Создать новую команду"), displayMode: .inline)
        }
    }
}

struct AddNewTeam_Previews: PreviewProvider {
    static var previews: some View {
        AddNewTeam()
    }
}

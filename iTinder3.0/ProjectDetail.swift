//
//  ProjectDetail.swift
//  iTinder3.0
//
//  Created by алтынпончик on 5/13/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

struct ProjectDetail: View {
    
    @State private var showingAlert = false
    @State private var currentScore = 0
    
    var project: String
    var description: String
    var numberOfLits: Int
    var imageName: String
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                
                Image(imageName)
            }
            Text(description).padding()
            
            Button(action: {
                self.currentScore += 1 // вот тут баг
                // пофикси
                // нужно, чтобы апдейтилась переменная numberOfLits
                self.showingAlert = true
            }) {
                Text("Lit It!")
            }.font(.headline)
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Стоп"), message: Text("Сначала регистрация"), dismissButton: .default(Text("ясн")))
            }
            
            Spacer()
        }.padding()
            .navigationBarTitle(Text(project), displayMode: .inline)
    }
}

struct ProjectDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDetail(project: "Hack Day", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", numberOfLits: 5, imageName: "hackday")
    }
}

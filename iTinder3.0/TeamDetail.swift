//
//  TeamDetail.swift
//  iTinder3.0
//
//  Created by алтынпончик on 5/13/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

struct TeamDetail: View {
    @State private var showingAlert = false
    
    var team: String
    var motto: String
    var description: String
    var numberOfParticipants: Int
    var imageName: String
    
    var body: some View {
        VStack {
            Spacer()
            ZStack(alignment: .bottomTrailing) {
                
                Image(imageName)
            }
            HStack {
                Text(motto)
                Text("\(numberOfParticipants)")
            }
            Text(description).padding()
            
            Button(action: {
                self.showingAlert = true
            }) {
                Text("Join!")
            }.font(.headline)
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Стоп"), message: Text("Сначала регистрация"), dismissButton: .default(Text("ясн")))
            }
            
            Spacer()
        }.padding()
            .navigationBarTitle(Text(team), displayMode: .inline)
    }
}

struct TeamDetail_Previews: PreviewProvider {
    static var previews: some View {
        TeamDetail(team: "DobroTeam", motto: "alea jacta est", description: "Integer sed odio felis.", numberOfParticipants: 5, imageName: "image-alignment")
    }
}

//
//  EventDetail.swift
//  iTinder3.0
//
//  Created by алтынпончик on 5/3/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

struct EventDetail: View {
    
    @State private var showingAlert = false
    
    var event: String
    var description: String
    var tag: String
    var imageName: String
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                
                Image(imageName)
            }
            Text(description).padding()
            
            Button(action: {
                self.showingAlert = true
            }) {
                Text("Хочу сюда!")
            }.font(.headline)
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Стоп"), message: Text("Сначала регистрация"), dismissButton: .default(Text("ясн")))
            }
            
            Spacer()
            }.padding()
        .navigationBarTitle(Text(event), displayMode: .inline)
    }
}

struct EventDetail_Previews: PreviewProvider {
    static var previews: some View {
        EventDetail(event: "Hack Day", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et faucibus lectus. Phasellus dapibus nunc a arcu feugiat, ut euismod enim lobortis. Integer sed odio felis.", tag: "hackathon", imageName: "hackday")
    }
}

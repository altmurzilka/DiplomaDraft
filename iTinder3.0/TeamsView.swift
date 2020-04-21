//
//  TeamsView.swift
//  iTinder3.0
//
//  Created by алтынпончик on 4/21/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

struct TeamsView: View {
    struct Data: Identifiable {
        let id: Int
        let name: String
        let type: String
        let color: Color
    }
    
    static let colors: [String: Color] = ["it": .purple, "hackathon": .red, "talk": .blue, "meetup": .green]
    
    var dataList = [
        Data(id: 0, name: "Good Books", type: "hackathon", color: .red),
        Data(id: 1, name: "Revolv", type: "talk", color: .blue),
        Data(id: 2, name: "8base", type: "meetup", color: .green),
        Data(id: 3, name: "Snack", type: "it", color: .purple),
        Data(id: 4, name: "Altar", type: "hackathon", color: .purple),
        Data(id: 5, name: "Kunster", type: "it", color: .purple),
        Data(id: 6, name: "Ololo", type: "it", color: .purple),
        Data(id: 7, name: "Haikyuu!", type: "it", color: .purple),
    ]
    
    @State private var events = ["HackDay", "TechGarden", "SomeOtherEvent"]
    
    
    var body: some View {
        NavigationView {
            List(dataList) { data in
                HStack {
                    Image("image-alignment").resizable()
                        .frame(width: 90.0, height: 90.0)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                    VStack(alignment: .leading) {
                        Text(data.name).font(.headline)
                            
                            .layoutPriority(1)
                        Text("Описание").font(.subheadline)
                            .padding(.top, 3)
                        
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: "person")
                            Text("5")
                        }
                        
                        
                    }
                    Spacer()
                    
                }
                Spacer()
                
                HStack {
                    Button ("Join!")  {
                        
                    }.padding()
                    .clipShape(Circle())
                }
                
            }.navigationBarTitle("Команды", displayMode: .inline)
            // .padding(2)
            
            //.listStyle(GroupedListStyle())
        }
    }
}

struct TeamsView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsView()
    }
}

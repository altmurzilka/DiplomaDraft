//
//  ProjectsView.swift
//  iTinder3.0
//
//  Created by алтынпончик on 4/20/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

struct ProjectsView: View {
    
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
    ]
    
    @State private var events = ["HackDay", "TechGarden", "SomeOtherEvent"]
    
    
    var body: some View {
        NavigationView {
        List(dataList) { data in
            HStack {
                Image("image-alignment").resizable()
                    .frame(width: 90.0, height: 90.0)
                VStack(alignment: .leading) {
                    Text(data.name).font(.headline)
                        .padding(.top, -30)
                        .layoutPriority(1)
                    Text("Some event").font(.subheadline)
                        .padding(.top, 2)
                    
                    
                }
                Spacer()
                
            }
            Spacer()
            Divider()
            VStack {
              
                    Text("12")
                        .font(.headline).foregroundColor(Color.pink)
                        .fontWeight(.black)
    
             
                    
                    
                      //  .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                       // .scaledToFit()
                       // .frame(width: 20, height: 30)
                HStack{
                    
                    Text("Lit It!")
                    
                }
                
            }
            
        }.navigationBarTitle("Проекты", displayMode: .inline)
           // .padding(2)
        
        //.listStyle(GroupedListStyle())
        }
    }
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsView()
    }
}

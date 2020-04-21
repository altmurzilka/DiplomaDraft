//
//  EventsView.swift
//  iTinder3.0
//
//  Created by алтынпончик on 4/20/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

struct EventsView: View {
    
    struct Event: Identifiable {
        let id: Int
        let name: String
        let type: String
        let color: Color
    }
    
    static let colors: [String: Color] = ["it": .purple, "hackathon": .red, "talk": .blue, "meetup": .green]
    
    var eventList = [
        Event(id: 0, name: "Hackday2020", type: "hackathon", color: .red),
        Event(id: 1, name: "SwiftBySundell", type: "talk", color: .blue),
        Event(id: 2, name: "TechGarden", type: "meetup", color: .green),
        Event(id: 3, name: "Hackday2047", type: "it", color: .purple),
        Event(id: 4, name: "Hackday2020", type: "hackathon", color: .purple),
        Event(id: 5, name: "Hackday2028", type: "it", color: .purple),
    ]
    
    @State private var events = ["HackDay", "TechGarden", "SomeOtherEvent"]
    
    
    var body: some View {
        NavigationView {
        List(eventList) { event in
            HStack {
                Image("hackday").resizable()
                    .frame(width: 90.0, height: 90.0)
                VStack(alignment: .leading) {
                    Text(event.name).font(.headline)
                        .padding(.top, -30)
                        .layoutPriority(1)
                    
                }
                Spacer()
                VStack {
                    Spacer()
                    Text(event.type).foregroundColor(event.color).font(.headline)
                        .padding(2)
                }
            }
           // Spacer()
            }.navigationBarTitle("События", displayMode: .inline)
            .padding(5)
        }
    }
}


struct EventsView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView()
    }
}

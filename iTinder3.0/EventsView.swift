//
//  EventsView.swift
//  iTinder3.0
//
//  Created by алтынпончик on 4/20/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

struct EventsView: View {
    
    var showEvent: [EventsData] = []
    
    var body: some View {
        NavigationView {
            List(showEvent) { event in
                EventCell(event: event)
            }.navigationBarTitle("События", displayMode: .inline)
        }
    }
}

struct EventsView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView(showEvent: Edata)
    }
}

struct EventCell: View {
    let event: EventsData
    
    var body: some View {
        return NavigationLink(
        destination: EventDetail(item: event)) {
            Image(event.imageName)
                .resizable()
                .frame(width: 90.0, height: 90.0)
            VStack(alignment: .leading) {
                Text(event.event)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.bottom, 70)
            }
            Spacer()
            Text(event.tag).padding(.top, 70)
        }
        
    }
}


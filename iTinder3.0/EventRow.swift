//
//  EventRow.swift
//  iTinder3.0
//
//  Created by алтынпончик on 4/28/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

struct EventRow: View {
    
    var item: EventsData
    
    var body: some View {
        NavigationLink(destination: EventDetail(item: item)) {
            HStack {
                Image(item.imageName)
                    .resizable()
                    .frame(width: 90.0, height: 90.0)
                VStack(alignment: .leading) {
                    Text(item.event)
                        .font(.headline)
                        .padding(.bottom, 70)
                }
                Spacer()
                Text(item.tag).padding(.top, 70)
            }.padding()
        }
    }
}

struct EventRow_Previews: PreviewProvider {
    static var previews: some View {
        EventRow(item: Edata[1])
    }
}

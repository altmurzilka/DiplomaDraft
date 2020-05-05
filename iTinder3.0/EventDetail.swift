//
//  EventDetail.swift
//  iTinder3.0
//
//  Created by алтынпончик on 5/3/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

struct EventDetail: View {
    
    var item: EventsData
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.imageName)
            }
            Text(item.description).padding()
            
            Button("Хочу сюда!") {
            }.font(.headline)
            Spacer()
        }.navigationBarTitle(Text(item.event), displayMode: .inline)
    }
}

struct EventDetail_Previews: PreviewProvider {
    static var previews: some View {
        EventDetail(item: Edata[2])
    }
}

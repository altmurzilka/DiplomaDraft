//
//  EventsData.swift
//  iTinder3.0
//
//  Created by алтынпончик on 4/28/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

struct EventsData: Identifiable {
    let id = UUID()
    let event: String
    let description: String
    let tag: String
    var imageName: String 
}

let Edata = [
    EventsData(event: "Hack Day", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et faucibus lectus. Phasellus dapibus nunc a arcu feugiat, ut euismod enim lobortis. Integer sed odio felis.", tag: "hackathon", imageName: "hackday"),
    EventsData(event: "Demo Day", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et faucibus lectus. Phasellus dapibus nunc a arcu feugiat, ut euismod enim lobortis. Integer sed odio felis.", tag: "hackathon", imageName: "hackday"),
    EventsData(event: "SwiftBySundell", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et faucibus lectus. Phasellus dapibus nunc a arcu feugiat, ut euismod enim lobortis. Integer sed odio felis.", tag: "talk", imageName: "hackday"),
    EventsData(event: "TechGarden", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et faucibus lectus. Phasellus dapibus nunc a arcu feugiat, ut euismod enim lobortis. Integer sed odio felis.", tag: "hackathon", imageName: "hackday"),
    EventsData(event: "Hackday2047", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et faucibus lectus. Phasellus dapibus nunc a arcu feugiat, ut euismod enim lobortis. Integer sed odio felis.", tag: "meetup", imageName: "hackday"),
    EventsData(event: "Hackday2020", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et faucibus lectus. Phasellus dapibus nunc a arcu feugiat, ut euismod enim lobortis. Integer sed odio felis.", tag: "it", imageName: "hackday"),
    EventsData(event: "Hackday2028", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et faucibus lectus. Phasellus dapibus nunc a arcu feugiat, ut euismod enim lobortis. Integer sed odio felis.", tag: "hackathon", imageName: "hackday")
]

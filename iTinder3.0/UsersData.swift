//
//  UsersData.swift
//  iTinder3.0
//
//  Created by алтынпончик on 5/10/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

struct UserData: Identifiable {
    let id = UUID()
    let username: String
    var password: String
}

var Udata = [
    UserData(username: "Test", password: "ABCabc123*"),
    UserData(username: "minecraft", password: "ABCabc123*"),
    UserData(username: "Bob Kelso", password: "ABCabc123*"),
    UserData(username: "Tommy Murr", password: "ABCabc123*")
]

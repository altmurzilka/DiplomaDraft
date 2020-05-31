//
//  UsersData.swift
//  iTinder3.0
//
//  Created by алтынпончик on 5/10/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

class User: ObservableObject {
    @Published var email = ""
    @Published var pass = ""
}

//
//  UsersData.swift
//  iTinder3.0
//
//  Created by алтынпончик on 5/10/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI
import Foundation
import Combine

class User: ObservableObject {
    @Published var email = ""
    @Published var pass = ""
    @Published var status: Bool {
        didSet {
            UserDefaults.standard.set(status, forKey: "status")
        }
    }
    init() {
        self.status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    }
}

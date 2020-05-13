//
//  UserView.swift
//  iTinder3.0
//
//  Created by алтынпончик on 5/13/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

struct UserView: View {
    var singleUser : [UserData] = []
    var body: some View {
        VStack {
            Image("flame")
            Text("Hello!")
        }
        
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}

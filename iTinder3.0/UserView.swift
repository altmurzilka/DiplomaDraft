//
//  UserView.swift
//  iTinder3.0
//
//  Created by алтынпончик on 5/13/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI
import Firebase

struct UserView: View {
    //@Binding var status : Bool
    var body: some View {
        VStack {
            Image("itinder")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            Text("Hello!")
            Button(action: {
                try! Auth.auth().signOut()
                print("error")
                UserDefaults.standard.set(false, forKey: "status")
                NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
            }) {
                Text("OK")
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
            }
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}

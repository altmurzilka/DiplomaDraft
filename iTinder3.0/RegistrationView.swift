//
//  RegistrationView.swift
//  iTinder3.0
//
//  Created by алтынпончик on 4/20/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var firstName = ""
    
    var body: some View {
        
        TextField("Enter your first name", text: $firstName)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.green, lineWidth: 2))
            .padding(50)
        
        
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}

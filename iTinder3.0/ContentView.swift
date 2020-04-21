//
//  ContentView.swift
//  iTinder3.0
//
//  Created by алтынпончик on 4/20/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            EventsView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("События")
                    }
            }
            ProjectsView()
                .tabItem {
                    VStack {
                        Image(systemName: "square.and.pencil")
                        Text("Проекты")
                    }
            }
            ProjectsView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.3")
                        Text("Команды")
                    }
            }
            RegistrationView()
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Профиль")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

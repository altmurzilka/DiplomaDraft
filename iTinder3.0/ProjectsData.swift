//
//  ProjectsData.swift
//  iTinder3.0
//
//  Created by алтынпончик on 5/13/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI

struct ProjectsData: Identifiable {
    let id = UUID()
    let project: String
    let description: String
    let numberOfLits: Int
    let imageName: String
}

let Pdata = [
    ProjectsData(project: "DobroTeam", description: "Integer sed odio felis.", numberOfLits: 5, imageName: "flame"),
    ProjectsData(project: "SomePRJCT", description: "Integer sed odio felis.", numberOfLits: 5, imageName: "flame"),
    ProjectsData(project: "Robo", description: "Integer sed odio felis.", numberOfLits: 2, imageName: "flame"),
    ProjectsData(project: "iTinder", description: "Integer sed odio felis.", numberOfLits: 4, imageName: "flame"),
    ProjectsData(project: "SlimShady", description: "Integer sed odio felis.", numberOfLits: 7, imageName: "flame")
]


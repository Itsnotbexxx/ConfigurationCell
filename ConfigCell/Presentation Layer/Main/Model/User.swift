//
//  User.swift
//  ConfigCell
//
//  Created by Бексултан Нурпейс on 13.05.2022.
//

import Foundation

struct User: Hashable {
    let imageName: String
    let name: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(imageName)
        hasher.combine(name)
    }
}

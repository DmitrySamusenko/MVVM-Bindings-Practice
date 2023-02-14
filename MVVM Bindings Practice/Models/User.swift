//
//  User.swift
//  MVVM Bindings Practice
//
//  Created by Dmitry Samusenko on 14.02.2023.
//

import Foundation

struct User {
    let login: String?
    let passwords: String?
}

extension User {
    static var loggins = [
    User(login: "demetrius", passwords: "12345")
    ]
}

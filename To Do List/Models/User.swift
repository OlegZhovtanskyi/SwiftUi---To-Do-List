//
//  User.swift
//  To Do List
//
//  Created by Oleg Zhovtanskyi on 22/10/2023.
//

import Foundation


struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joinde: TimeInterval
}

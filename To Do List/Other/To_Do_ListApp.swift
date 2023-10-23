//
//  To_Do_ListApp.swift
//  To Do List
//
//  Created by Oleg Zhovtanskyi on 22/10/2023.
//

import FirebaseCore
import SwiftUI

@main
struct To_Do_ListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

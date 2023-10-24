//
//  NewItemViewViewModel.swift
//  To Do List
//
//  Created by Oleg Zhovtanskyi on 22/10/2023.
//

import Foundation


class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    init() {}
    
    func save() {
        
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        guard dueDate >= Date().addingTimeInterval(-86_400) else {
            return false
        }
        
        return true
    }
}

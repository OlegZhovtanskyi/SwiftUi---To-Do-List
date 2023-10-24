//
//  ToDoListViewViewModel.swift
//  To Do List
//
//  Created by Oleg Zhovtanskyi on 22/10/2023.
//

import Foundation
///ViewModel for list of items view
///Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
}

//
//  ToDoLIstItemsView.swift
//  To Do List
//
//  Created by Oleg Zhovtanskyi on 22/10/2023.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel: ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
    
    
    init (userId: String) {
        //users/<id>/todos/<entries>
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/todos"
        )
        self._viewModel = StateObject(
            wrappedValue: ToDoListViewViewModel(userId: userId)
        )
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    ToDoListItemView(item: item)
                        .swipeActions {
                            Button(action: {
                                viewModel.delete(id: item.id)
                            }, label: {
                                Text("Delete")
                                
                            })
                            .tint(.red)
                        }
                }
                .listStyle(.plain)
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button(action: {
                    viewModel.showingNewItemView = true
                }, label: {
                    Image(systemName: "plus")
                })
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "J8gEzf6WOwMFIQKnW0UeRqt0C0o2")
}

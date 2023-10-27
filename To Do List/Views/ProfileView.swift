//
//  ProfileView.swift
//  To Do List
//
//  Created by Oleg Zhovtanskyi on 22/10/2023.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    profile(user: user)
                } else {
                    Text("Loading profile...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View {
        // Avatar
        Image(systemName: "person.circle")
            .resizable()
            .scaledToFit()
            .foregroundStyle(.blue)
            .frame(width: 125, height: 125)
            .padding()
        
        // Info: name, email, member since
        VStack (alignment: .leading) {
            HStack {
                Text("Name: ")
                    .bold()
                Text(user.name)
            }
            .padding()
            HStack {
                Text("Email: ")
                    .bold()
                Text(user.email)
            }
            .padding()
            HStack {
                Text("Member since: ")
                    .bold()
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }
            .padding()
        }
        .padding(.vertical)
        
        // Sign out
        
        Button("Log Out") {
            viewModel.logOut()
        }
        .padding()
        .background(.red.opacity(0.8))
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .tint(.white)
        
        Spacer()
    }
}

#Preview {
    ProfileView()
}

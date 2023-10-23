//
//  RegisterView.swift
//  To Do List
//
//  Created by Oleg Zhovtanskyi on 22/10/2023.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register",
                       subtitle: "Start organizing todos",
                       backgroundColor: .purple,
                       angle: -15)
            
            Form {
                TextField("Full name", text: $viewModel.name)
                    .autocorrectionDisabled()
                TextField("Email Address", text: $viewModel.email)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.never)
                SecureField("Password", text: $viewModel.password)
                
                TLButton(title: "Create Account",
                         backgroundColor: .purple) {
                    //Register
                    viewModel.register()
                }
            }
            .offset(y: -50)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}

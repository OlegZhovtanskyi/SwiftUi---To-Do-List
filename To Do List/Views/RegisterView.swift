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
                if  !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundStyle(.red)
                }
                
                TextField("Full name", text: $viewModel.name)
                    .autocorrectionDisabled()
//                    .ignoresSafeArea(.keyboard, edges: .bottom)
                TextField("Email Address", text: $viewModel.email)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.never)
//                    .ignoresSafeArea(.keyboard, edges: .bottom)
                SecureField("Password", text: $viewModel.password)
//                    .ignoresSafeArea(.keyboard, edges: .bottom)
                
                TLButton(title: "Create Account",
                         backgroundColor: .purple) {
                    //Register
                    viewModel.register()
                }
            }
            .offset(y: -50)
            .ignoresSafeArea(.keyboard, edges: .bottom)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}

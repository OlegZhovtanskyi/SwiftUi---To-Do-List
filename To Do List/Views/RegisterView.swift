//
//  RegisterView.swift
//  To Do List
//
//  Created by Oleg Zhovtanskyi on 22/10/2023.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register",
                       subtitle: "Start organizing todos",
                       backgroundColor: .purple,
                       angle: -15)
            
            Form {
                TextField("Full name", text: $name)
                    .autocorrectionDisabled()
                TextField("Email Address", text: $email)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.none)
                SecureField("Password", text: $password)
                
                TLButton(title: "Create Account",
                         backgroundColor: .purple) {
                    //Register
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

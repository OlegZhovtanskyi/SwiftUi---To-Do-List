//
//  TLButton.swift
//  To Do List
//
//  Created by Oleg Zhovtanskyi on 23/10/2023.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            // Action
            action()
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(backgroundColor)
                
                Text(title)
                    .foregroundStyle(.white)
                    .bold()
            }
        })
        .padding()
    }
}

#Preview {
    TLButton(title: "Button",
             backgroundColor: .pink) {
        // Action
    }
}

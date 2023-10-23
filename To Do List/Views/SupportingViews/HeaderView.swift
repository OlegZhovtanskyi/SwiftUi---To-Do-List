//
//  HeaderView.swift
//  To Do List
//
//  Created by Oleg Zhovtanskyi on 22/10/2023.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let backgroundColor: Color
    let angle: Double
    
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(backgroundColor)
                .rotationEffect(Angle(degrees: angle))
            
            VStack {
                Text(title)
                    .foregroundStyle(.white)
                    .font(.system(size: 50))
                    .bold()
                Text(subtitle)
                    .foregroundStyle(.white)
                    .font(.system(size: 30))
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 350)
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", backgroundColor: .blue, angle: 15)
}

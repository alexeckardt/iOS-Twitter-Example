//
//  UserRowView.swift
//  iOS-Twitter-Example
//
//  Created by Alex Eckardt on 2023-01-06.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        
        HStack {
            
            //Pfp
            Circle()
                .frame(width:48, height:48)
                
            //Info
            VStack(alignment: .leading, spacing: 4) {
                
                Text("joker")
                    .font(.subheadline).bold()
                
                Text("Heath Ledger")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
            }
            
            Spacer()
            
        }
        .padding()
        
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}

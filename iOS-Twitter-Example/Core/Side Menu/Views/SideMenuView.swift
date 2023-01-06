//
//  SideMenuView.swift
//  iOS-Twitter-Example
//
//  Created by Alex Eckardt on 2023-01-06.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        
        //Profile
        VStack(alignment: .leading) {
            Circle()
                .frame(width: 48)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Bruce Wayne")
                    .font(.headline)
                
                Text("@batman")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}

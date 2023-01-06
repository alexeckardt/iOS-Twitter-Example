//
//  UserStatsView.swift
//  iOS-Twitter-Example
//
//  Created by Anita Eckardt on 2023-01-06.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        
        HStack(spacing: 24) {
            HStack(spacing: 4) {
                
                Text("872")
                    .font(.subheadline)
                    .bold()
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
            HStack(spacing: 4) {
             
                Text("4.9M")
                    .font(.subheadline)
                    .bold()
                
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
        }
        
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}

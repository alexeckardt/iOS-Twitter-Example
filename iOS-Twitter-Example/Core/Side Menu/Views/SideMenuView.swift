//
//  SideMenuView.swift
//  iOS-Twitter-Example
//
//  Created by Alex Eckardt on 2023-01-06.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 32) {
            
            profileInfo
                .padding(.leading)
            
            //Rows
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { option in
                
                //One Row
                HStack(spacing: 14) {
                    Image(systemName: option.imageName)
                        .font(.headline)
                        .foregroundColor(.gray)
                    
                    Text(option.description)
                        .font(.subheadline)
                    
                    Spacer()
                }
                .frame(height: 40)
                .padding(.horizontal)
            }
            
            Spacer()
        }
        
        
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}

extension SideMenuView {
    
    //
    //
    //
    //
    
    var profileInfo: some View {
        
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
                
                UserStatsView()
                    .padding(.vertical)
            }
        }
    }
    
    //
    //
    //
    //
    //
}

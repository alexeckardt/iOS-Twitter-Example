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
            
            rowButtons
            
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
    
    var rowButtons: some View {
        
        //Rows
        ForEach(SideMenuViewModel.allCases, id: \.rawValue) { option in
            
            // Go To Profile
            if option == .profile {
                NavigationLink {
                    ProfileView()
                } label: {
                    SideMenuOptionRowView(viewModel: option)
                }
            } else
            
            // Logout BUTTON!
            
            if option == .logout {
                Button {
                    
                    //Handel logout here
                    print("Logged out")
                    
                } label: {
                    SideMenuOptionRowView(viewModel: option)
                }
            }
            
            //Others
            
            else {
                SideMenuOptionRowView(viewModel: option)
            }
        }
    }
}

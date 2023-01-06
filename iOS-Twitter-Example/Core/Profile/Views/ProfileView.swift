//
//  ProfileView.swift
//  iOS-Twitter-Example
//
//  Created by Alex Eckardt on 2023-01-05.
//

import SwiftUI

struct ProfileView: View {
    
    let pfpSize : CGFloat = 90
    
    var body: some View {
        
        VStack {
            
            HeaderView
            
            //Push
            Spacer()
        }

    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

//
//
// Extention
//
//

extension ProfileView {
    
    //
    var HeaderView: some View {
        
        //
        //Top Banner
        //
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
            
            
            //Left Side of Banner
            VStack {
                
                //Back Arrow Button
                Button {
                    
                    //Do Stuff
                    
                } label: {
                    //Image
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width:20, height: 16)
                        .foregroundColor(.white)
                }
                
                
                //Profile Picture
                Circle()
                    .frame(width: pfpSize, height: pfpSize)
                .offset(x: 16, y: pfpSize/2)
            }
        }
        .frame(height: 98)
        
    }
}

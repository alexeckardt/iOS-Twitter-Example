//
//  ProfileView.swift
//  iOS-Twitter-Example
//
//  Created by Alex Eckardt on 2023-01-05.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    
    let pfpSize : CGFloat = 90
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            //banner + PFP
            HeaderView
            
            ActionButtons
            
            ProfileInfo
            
            HStack {
                
                //Loop Over Every cas in the Enum, Use it's Title Property
                ForEach(TweetFilterViewModel.allCases, id: \.rawValue) { item in
                    VStack {
                        
                        var meSelected : Bool = selectedFilter == item
                        
                        
                        //Name of the Filter
                        Text(item.title)
                            .font(.subheadline)
                            .fontWeight(meSelected ? .semibold : .regular)
                            .foregroundColor(meSelected ? .black : Color(.systemGray))
                        

                        Capsule()
                            .foregroundColor(meSelected ? Color(.systemBlue) : .clear)
                            .frame(height: 3)
                        
                    }
                    .onTapGesture {
                        //Press Event, Smooth Transition
                        withAnimation(.easeInOut) {
                            self.selectedFilter = item
                        }
                    }
                    
                    
                }
            }
            
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
            VStack(alignment: .leading) {
                
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
                .offset(x: 16, y: 0)
                
                
                //Profile Picture
                Circle()
                    .frame(width: pfpSize, height: pfpSize)
                .offset(x: 16, y: pfpSize/2)
            }
        }
        .frame(height: 98)
        
    }
    
    //
    //
    //
    
    var ActionButtons: some View {
        
        //
        HStack(spacing: 12) {
            Spacer()
            
            //Notif
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            
            
            // Edit Profile Button
            Button {
                // Do Something
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray, lineWidth: 0.75))
            }
            
        }.padding(.trailing)
    }
    
    //
    //
    //
    
    var ProfileInfo : some View {
        
        VStack(alignment: .leading, spacing: 4) {
            
            HStack {
                Text("Heath Ledger")
                    .font(.title2).bold()
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
            }
            
            Text("@joker")
                .font(.subheadline)
                .foregroundColor(Color(.systemGray))
            
            Text("A Bio")
                .font(.subheadline)
                .padding(.vertical)
            
            //
            //
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
        .padding()
    }
}

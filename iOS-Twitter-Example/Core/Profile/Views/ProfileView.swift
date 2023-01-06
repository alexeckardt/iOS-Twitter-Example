//
//  ProfileView.swift
//  iOS-Twitter-Example
//
//  Created by Alex Eckardt on 2023-01-05.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    @Namespace var animation;
    @Environment(\.presentationMode) var mode;
    
    
    let pfpSize : CGFloat = 90
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            //banner + PFP
            headerView
            
            actionButtons
            
            profileInfo
            
            filterTabs
            
            tweetView
            
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
    var headerView: some View {
        
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
                    
                    //Exit the Current Page, Return to previous view
                    mode.wrappedValue.dismiss()
                    
                } label: {
                    //Image
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width:20, height: 16)
                        .foregroundColor(.white)
                }
                .offset(x: 16, y: 12)
                
                
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
    
    var actionButtons: some View {
        
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
    
    var profileInfo : some View {
        
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
    
    //
    //
    //
    //
    //
    
    var filterTabs : some View {
        
        HStack {
            
            //Loop Over Every cas in the Enum, Use it's Title Property
            ForEach(TweetFilterViewModel.allCases, id: \.rawValue) { item in
                VStack {
                    
                    let meSelected : Bool = selectedFilter == item
                    
                    //Name of the Filter
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(meSelected ? .semibold : .regular)
                        .foregroundColor(meSelected ? .black : Color(.systemGray))
                    
                    if (meSelected) {
                        //Move the Capsule
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                        
                    } else {
                        //No Anim
                        Capsule()
                            .foregroundColor(.clear)
                            .frame(height: 3)
                    }
                    
                    
                }
                .onTapGesture {
                    //Press Event, Smooth Transition
                    withAnimation(.easeInOut) {
                        self.selectedFilter = item
                    }
                }
                
                
            }
        }
        .overlay(Divider().offset(x: 0, y: 16))
        
    }
    
    //
    //
    //
    //
    //
    
    var tweetView : some View {
        
        ScrollView {
            LazyVStack {
                ForEach(0 ... 3, id: \.self) { i in
                    TweetRowView()
                }
            }.ignoresSafeArea()
        }
    }
}

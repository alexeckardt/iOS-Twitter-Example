//
//  TweetRowView.swift
//  iOS-Twitter-Example
//
//  Created by Alex Eckardt on 2023-01-05.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        
        
        VStack(alignment: .leading) {
            
            //Profile Picture + User Info + Tweet
            HStack(alignment: .top, spacing: 12) {
                
                //
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading, spacing: 4 ){
                    
                    //User Info
                    HStack {
                        Text("Bruce Wayne")
                            .font(.subheadline).bold()
                        
                        Text("@batman")
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                        //Since Sent
                        Text("2w")
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                    }
                    
                    // Tweet Caption
                    Text("Me when the when uhhhhh when uhhhhh wuhuhe eheheehuwehwue hum mmimim honk himimimi")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            
            //Action Buttons
            HStack {
                
                //Reply
                Button {
                    
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                
                Spacer()
                
                //Retweet
                Button {
                    
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                
                Spacer()
                
                //Like
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                
                Spacer()
                
                // ...
                Button {
                    
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
                
            }
            .foregroundColor(.gray)
            
        //Vstack
        }
        .padding()
        
        Divider()
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}

//
//  FeedView.swift
//  iOS-Twitter-Example
//
//  Created by Anita Eckardt on 2023-01-05.
//

import SwiftUI

struct FeedView: View {
    
    @State private var showNewTweetView = false;
    
    var body: some View {
        
        //Scrollable
        ZStack(alignment: .bottomTrailing) {
            
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 20, id: \.self) { i in
                        TweetRowView()
                    }
                }
            }
            
            //New Tweet
            Button {
                showNewTweetView.toggle()
            } label: {
                //shouldbe image
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 84)
                    .padding()
                    .fullScreenCover(isPresented: $showNewTweetView) {
                        Text("New tweet")
                    }
                
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}

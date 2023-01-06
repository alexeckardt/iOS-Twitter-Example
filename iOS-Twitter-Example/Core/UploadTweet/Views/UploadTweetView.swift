//
//  UploadTweetView.swift
//  iOS-Twitter-Example
//
//  Created by Anita Eckardt on 2023-01-06.
//

import SwiftUI

struct UploadTweetView: View {
    
    @State private var caption : String = "";
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack {
            
            //Buttons
            HStack {
                
                //Cancel Button
                Button {
                    print("dismiss")
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundColor(Color(.systemBlue))
                }
                
                //
                Spacer()
                
                //Tweet Button
                Button {
                    print("tweet")
                } label: {
                    Text("Tweet")
                        .padding(.horizontal)
                        .padding(.vertical, 10)
                        .foregroundColor(.white)
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                }
                
                
            }
            .padding()
            
            HStack(alignment: .top) {
                
                //PFP
                Circle()
                    .frame(width: 64)
                
                TextArea("What's Happening?", text: $caption)
                
            }.padding()
            
        }
        
    }
}

struct UploadTweetView_Previews: PreviewProvider {
    static var previews: some View {
        UploadTweetView()
    }
}

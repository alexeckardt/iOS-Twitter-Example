//
//  FeedView.swift
//  iOS-Twitter-Example
//
//  Created by Anita Eckardt on 2023-01-05.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        
        //Scrollable
        ScrollView {
            LazyVStack {
                ForEach(0 ... 20, id: \.self) { i in
                    Text("Tweet " + String(i))
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

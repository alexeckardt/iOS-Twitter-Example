//
//  TweetFilterViewModel.swift
//  iOS-Twitter-Example
//
//  Created by Anita Eckardt on 2023-01-05.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable {
    
    case tweets
    case replies
    case likes
    
    //
    //From Prop, Get the title string
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
    
}

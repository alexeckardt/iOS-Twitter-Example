//
//  AuthHeaderView.swift
//  iOS-Twitter-Example
//
//  Created by Alex Eckardt on 2023-01-06.
//  Copyright © 2023 Alex Eckardt. All rights reserved.
//

import SwiftUI

struct AuthHeaderView: View {
    
    let title1: String
    let title2: String
    
    var body: some View {
        
        //Stack
        VStack(alignment: .leading) {
            
            //Buffer
            HStack { Spacer() }
            
            //Text
            VStack(alignment: .leading) {
                Text(title1)
                Text(title2)
            }.font(.largeTitle).fontWeight(.semibold)

        }
        .frame(height: 260)
        .padding(.leading)
        .foregroundColor(.white)
        .background(Color(.systemBlue))
        //Bkg as Shape
        .clipShape(RoundedShape(corners: [.bottomRight], cornerRadi: 80))
        
    }
}

struct AuthHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AuthHeaderView(title1: "Title1", title2: "Title2")
    }
}

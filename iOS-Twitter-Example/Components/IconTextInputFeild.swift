//
//  IconTextInputFeild.swift
//  iOS-Twitter-Example
//
//  Created by Anita Eckardt on 2023-01-06.
//  Copyright © 2023 Alex Eckardt. All rights reserved.
//

import SwiftUI

struct IconTextInputFeild: View {
    
    let imageName : String
    let placeholderText : String
    @Binding var text : String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                
                TextField(placeholderText, text: $text)
            }
            
            Divider()
                .background(Color(.darkGray))
        }
        
    }
}

struct IconTextInputFeild_Previews: PreviewProvider {
    static var previews: some View {
        IconTextInputFeild(imageName: "envelope", placeholderText: "default", text: .constant(""))
    }
}

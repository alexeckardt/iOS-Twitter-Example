//
//  TextArea.swift
//  iOS-Twitter-Example
//
//  Created by Anita Eckardt on 2023-01-06.
//

import SwiftUI

struct TextArea: View {
    
    @Binding var text: String
    let placeholder : String
    
    //Init a binding property
    init(_ placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        self._text = text
        UITextView.appearance().backgroundColor = .black
    }
    
    //
    //
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
        
            VStack(alignment: .leading) {
                TextEditor(text: $text)
                    .padding(4)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.black)
            }
            
            if (text.isEmpty) {
                
                Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
        }
        .font(.body)
    }
}

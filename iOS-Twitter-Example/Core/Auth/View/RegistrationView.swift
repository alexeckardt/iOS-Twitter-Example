//
//  RegistrationView.swift
//  iOS-Twitter-Example
//
//  Created by Alex Eckardt on 2023-01-06.
//

import SwiftUI

struct RegistrationView: View {
    
    @Environment(\.presentationMode) var presentationMode;
    
    @State private var email = "";
    @State private var username = "";
    @State private var name = "";
    @State private var password = "";
    
    var body: some View {
        
        VStack {
            
            //Header
            AuthHeaderView(title1: "Get Started.", title2: "Create your Account")
            
            //Feilds
            inputFields
            
            //Sign Up Button
            signupButton
            
            //
            Spacer()
            
            //Have Account?
            returnButton
            
        }.ignoresSafeArea()
        
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}

extension RegistrationView {
    
    var inputFields: some View {
        
        //Buttons
        VStack(spacing: 40) {
            
            //Email
            IconTextInputFeild(imageName: "envelope", placeholderText: "Email", text: $email)
            
            //Password
            IconTextInputFeild(imageName: "person", placeholderText: "Username", text: $password)
            
            //Password
            IconTextInputFeild(imageName: "person", placeholderText: "Full Name", text: $password)
            
            //Password
            IconTextInputFeild(imageName: "key", placeholderText: "Password", text: $password)
            
        }
        .padding(.horizontal, 32)
        .padding(.top, 44)
        
    }
    
    var signupButton: some View {
        
        Button {
            print("sign in")
        } label: {
            Text("Sign Up")
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 340, height: 50)
                .background(Color(.systemBlue))
                .clipShape(Capsule())
                .padding()
        }
        .shadow(color: .gray.opacity(0.5), radius:10, x:0, y:0)
        
    }
    
    //
    //
    //
    
    var returnButton: some View {
        
        Button {
            //Dismiss
            presentationMode.wrappedValue.dismiss()
            
        //
        } label: {
            HStack {
                Text("Already have an account?")
                    .font(.footnote)
                
                Text("Sign In")
                    .font(.footnote).fontWeight(.semibold)
            }
        }
        .padding(.bottom, 32)
        .foregroundColor(Color(.systemBlue))
        
    }
    
}

//
//  LoginView.swift
//  iOS-Twitter-Example
//
//  Created by Alex Eckardt on 2023-01-06.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""

    var body: some View {

        VStack {
            
            //Header
            header
            
            //Text Feilds
            accountdetails
            
            //Forgot Password
            buttons
            
            //Push all Up
            Spacer()
            
            //No Account?
            NavigationLink {
                RegistrationView()
                    .navigationBarHidden(true)
            } label: {
                HStack {
                    Text("Don't have an account?")
                        .font(.footnote)
                    
                    Text("Sign Up")
                        .font(.footnote).fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
            .foregroundColor(Color(.systemBlue))
            
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

extension LoginView {
    var header: some View {
        
        //Stack
        VStack(alignment: .leading) {
            
            //Buffer
            HStack { Spacer() }
            
            //Text
            VStack(alignment: .leading) {
                Text("Hello,")
                Text("Welcome Back.")
            }.font(.largeTitle).fontWeight(.semibold)

        }
        .frame(height: 260)
        .padding(.leading)
        .foregroundColor(.white)
        .background(Color(.systemBlue))
        //Bkg as Shape
        .clipShape(RoundedShape(corners: [.bottomRight], cornerRadi: 80))
    }
    
    //
    //
    //
    
    var accountdetails: some View {
        VStack(spacing: 40) {
            
            //Email
            IconTextInputFeild(imageName: "envelope", placeholderText: "Email", text: $email)
            
            //Password
            IconTextInputFeild(imageName: "key", placeholderText: "Password", text: $password)
        }
        .padding(.horizontal, 32)
        .padding(.top, 44)
        
    }
    
    //
    //
    //
    
    var buttons: some View {
        
        VStack {
            
            //Forgot Password
            HStack {
                
                //Push Right
                Spacer()
                
                //Forgot Password
                NavigationLink {
                    Text("Reset password view...")
                } label: {
                    Text("Forgot Password?")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color(.systemBlue))
                        .padding(.top)
                        .padding(.trailing)
                }
            }
            
            //
            //Log In
            Button {
                print("sign in")
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius:10, x:0, y:0)
            //
        }
    }
}

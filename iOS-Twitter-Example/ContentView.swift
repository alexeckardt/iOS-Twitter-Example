//
//  ContentView.swift
//  iOS-Twitter-Example
//
//  Created by Anita Eckardt on 2023-01-05.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sidebarVisible = true;
    private var sidebarWidth : CGFloat = 300;
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            //Show Bkg
            MainTabView()
                .navigationBarHidden(sidebarVisible)
            
            //Darken Bkg
            if (sidebarVisible) {
                ZStack {
                    Color(.black).opacity(sidebarVisible ? 0.25 : 0.0)
                }
                .ignoresSafeArea()
                //If Tap On Dark, Dismiss the side menu
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        sidebarVisible = false;
                    }
                }
            }
            
            //
            SideMenuView()
                .frame(width:sidebarWidth)
                .background(Color.white)
                .offset(x: sidebarVisible ? 0 : -sidebarWidth)
                
        }
        //
        //Navigation Bar Info
        //
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    
                    //Show and Hide
                    withAnimation(.easeInOut) {
                        sidebarVisible.toggle()
                    }
                    
                } label: {
                    
                    Circle()
                        .frame(width:48)
                }
            }
        }
        .onAppear {
            sidebarVisible = false;
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}

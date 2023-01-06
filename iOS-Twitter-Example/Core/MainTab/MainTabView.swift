//
//  MainTabView.swift
//  iOS-Twitter-Example
//
//  Created by Alex Eckardt on 2023-01-05.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedIndex = 0;
    
    var body: some View {
        
        TabView(selection: $selectedIndex) {
            
            //
            FeedView()
                .onTapGesture {
                    self.selectedIndex = 0;
                }
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(0)
            
            //
            FeedView()
                .onTapGesture {
                    self.selectedIndex = 1;
                }
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(1)
            
            //
            FeedView()
                .onTapGesture {
                    self.selectedIndex = 2;
                }
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(2)
            
            //
            FeedView()
                .onTapGesture {
                    self.selectedIndex = 3;
                }
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(3)
            
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
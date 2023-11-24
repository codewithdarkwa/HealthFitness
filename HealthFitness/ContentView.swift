//
//  ContentView.swift
//  HealthFitness
//
//  Created by Darkwa John on 24/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab){
            
            Text("Home")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            DiscoverView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Discover")
                }
            Text("Saved")
                .tabItem {
                    Image(systemName: "bookmark")
                    Text("Saved")
                }
            Text("Studio")
                .tabItem {
                    Image(systemName: "location")
                    Text("Location")
                }
        }
        .onAppear(){
            UITabBar.appearance().backgroundColor = .black
            UITabBar.appearance().barTintColor = .gray
        }
        .tint(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  Youtube Clone
//
//  Created by Jin Park on 1/31/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            YoutubeHomeView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            YoutubeExploreView()
                .tabItem{
                    Image(systemName: "safari")
                    Text("Explore")
                }
            YoutubeSubscriptionView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Subscription")
                }
            YoutubeLibraryView()
                .tabItem{
                    Image(systemName: "person")
                    Text("Library")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

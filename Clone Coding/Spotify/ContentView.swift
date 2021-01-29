//
//  ContentView.swift
//  SpotifyClone
//
//  Created by Jin Park on 12/21/20.
//
import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection){
            HomePage()
                .font(.title)
                .tabItem{
                    VStack{
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
                .tag(0)
            SearchPage()
                .font(.title)
                .tabItem{
                    VStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                }
                .tag(1)
            Text("")
                .font(.title)
                .tabItem{
                    VStack{
                        Image(systemName: "applelogo")
                        Text("")
                    }
                }
                .tag(2)
            Text("Chatting")
                .font(.title)
                .tabItem{
                    VStack{
                        Image(systemName: "message")
                        Text("채팅")
                    }
                }
                .tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

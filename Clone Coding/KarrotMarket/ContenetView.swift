//  ContentView.swift
//  KarrotClone
//
//  Created by Jin Park on 12/20/20.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    var usedItem: [UsedItem] = []
    
    var body: some View {
        TabView(selection: $selection){
            HomeView()
                .tabItem{
                    VStack{
                        Image(systemName: "house")
                        Text("홈")
                    }
                }
                .tag(0)
            MytownView()
                .font(.title)
                .tabItem{
                    VStack{
                        Image(systemName: "building")
                        Text("동네생활")
                    }
                }
                .tag(1)
            NearbyView()
                .font(.title)
                .tabItem{
                    VStack{
                        Image(systemName: "location")
                        Text("내 근처")
                    }
                }
                .tag(2)
            ChattingView()
                .font(.title)
                .tabItem{
                    VStack{
                        Image(systemName: "message")
                        Text("채팅")
                    }
                }
                .tag(3)
            MykarrotView()
                .font(.title)
                .tabItem{
                    VStack{
                        Image(systemName: "person")
                        Text("나의 당근")
                    }
                }
                .tag(4)
        }
            .background(Color.white)
    }
}

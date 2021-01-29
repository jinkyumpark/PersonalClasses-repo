//
//  ContentItemViewer.swift
//  SpotifyClone
//
//  Created by Jin Park on 12/29/20.
//
import SwiftUI

struct ContentItemViewer: View {
    var topSpacer_height: CGFloat = 400
    @State var playButton_offset: CGFloat = 180
    
    var body: some View {
        ZStack{
            //Layer 0
            LinearGradient(gradient: Gradient(colors: [Color.init(red: 61/255, green: 89/255, blue: 115/255), Color.black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            //Layer 1
            VStack{
                Spacer()
                    .frame(height: 50)
                Image("exAlbumCover")
                    .resizable()
                    .frame(width:200, height:200)
                Text("Title")
                    .foregroundColor(Color.white)
                    .font(.system(size: 20, weight: .bold))
                Text("Subtitle")
                    .foregroundColor(.init(red: 0.5, green: 0.5, blue:0.5))
                Spacer()
                
            }
            
            //Layer 2
            ScrollView{
                GeometryReader {geo -> AnyView? in
                    let thisOffset = geo.frame(in: .global).minY
                    self.playButton_offset = thisOffset
                    return nil
                }
                
                VStack(spacing:0){
                HStack {
                Spacer()
                    .frame(height: topSpacer_height)
                    .background(LinearGradient(gradient: Gradient(colors: [
                        Color.clear,
                        Color.clear,
                        Color.clear,
                        Color.clear,
                        Color.clear,

                        Color.black
                    ]), startPoint: .top, endPoint: .bottom))
            }
                VStack {
                    ForEach(0..<20){ indicator in
                        HStack {
                            lImage_text_rImage()
                            .foregroundColor(.white)
                            Spacer()
                        }

                    }
                }.background(Color.black)
            }.background(Color.clear)
        }
            
            //Layer 3
            VStack {
                Spacer()
                Text("PLAY")
                    .foregroundColor(.white)
                    .frame(width: 240, height: 50)
                    .background(Color.init(red: 30/255, green: 215/255, blue: 96/255))
                    .cornerRadius(25)
                    .font(.system(size: 20, weight: .bold))
                Spacer()
                    .frame(height: playButton_offset)
            }
        
        }
    }
}

struct ContentItemViewer_Previews: PreviewProvider {
    static var previews: some View {
        ContentItemViewer()
    }
}

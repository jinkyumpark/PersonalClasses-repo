//
//  ContentView.swift
//  ColorMixer
//
//  Created by Jin Park on 1/24/21.
//

import SwiftUI

struct ContentView: View {
    @State private var redColor:Double = 255/2
    @State private var greenColor:Double = 255/2
    @State private var blueColor:Double = 255/2
    
    var body: some View {
        ZStack{
            Color.init(red: redColor/255, green: greenColor/255, blue: blueColor/255)
            .ignoresSafeArea(.all)
            
            VStack{
                
                Spacer()
                
                HStack{
                    Text("R: \(redColor, specifier: "%.0f")")
                    Text("G: \(greenColor, specifier: "%.0f")")
                    Text("B: \(blueColor, specifier: "%.0f")")
                }
                .font(.largeTitle)
                .padding()
                
                Spacer()
                
                //Color Box
                
                ZStack {
                    //Rectangle()
                    //    .foregroundColor(Color.white)
                    //    .cornerRadius(20)

                    VStack{
                        HStack{
                            Image(systemName: "r.circle")
                                .foregroundColor(Color.red)
                            Slider(value: $redColor, in: 0...255)
                                .accentColor(Color.red.opacity(0.5))
                            Image(systemName: "r.circle.fill")
                                .foregroundColor(Color.red)
                        }.padding()
                        HStack{
                            Image(systemName: "g.circle")
                                .foregroundColor(Color.green)
                            Slider(value: $greenColor, in: 0...255)
                                .accentColor(Color.green)
                            Image(systemName: "g.circle.fill")
                                .foregroundColor(Color.green)
                        }.padding()
                        HStack{
                            Image(systemName: "b.circle")
                                .foregroundColor(Color.blue)
                            Slider(value: $blueColor, in: 0...255)
                                .accentColor(Color.blue)
                            Image(systemName: "b.circle.fill")
                                .foregroundColor(Color.blue)
                        }.padding()
                    }
                    .font(.largeTitle)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                }
                
                Spacer()
            
            }
            
        }
    }
}

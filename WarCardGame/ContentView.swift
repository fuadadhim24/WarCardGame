//
//  ContentView.swift
//  WarCardGame
//
//  Created by Fuad Adhim Al Hasan on 05/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .containerRelativeFrame(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/, count: 3, span: 1, spacing: 0)
                Spacer()
                    .frame(height: 40)
                HStack{
                    Image("card2")
                    Spacer()
                        .frame(width: 60)
                    Image("card3")
                }
                Spacer()
                    .frame(height: 40)
                Image("button")
                Spacer()
                    .frame(height: 50)
                HStack{
                    VStack{
                        Text("Player")
                            .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                        Spacer()
                            .frame(height: 14)
                        Text("0")
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                    }
                    Spacer()
                        .frame(width: 60)
                    VStack{
                        Text("CPU")
                            .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                        Spacer()
                            .frame(height: 14)
                        Text("0")
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  WarCardGame
//
//  Created by Fuad Adhim Al Hasan on 05/08/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore:Int = 0
    @State var cpuScore:Int = 0
    
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .containerRelativeFrame(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/, count: 3, span: 1, spacing: 0)
                Spacer()
                    .frame(height: 40)
                HStack{
                    Image(playerCard)
                    Spacer()
                        .frame(width: 60)
                    Image(cpuCard)
                }
                Spacer()
                    .frame(height: 40)
              
//                Button("Deal") {
//                    deal()
//                }.foregroundColor(.white)
//
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                
                Spacer()
                    .frame(height: 50)
                HStack{
                    VStack{
                        Text("Player")
                            .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                        Spacer()
                            .frame(height: 14)
                        Text(String(playerScore))
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
                        Text(String(cpuScore))
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                    }
                }
                Spacer()
            }
        }
    }
    
    func deal(){
//        randomize the players card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
//        randomize the cpu card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
//        update the scores
        if(playerCardValue > cpuCardValue){
//            add playerScore
            playerScore += 1
        }else if cpuCardValue > playerCardValue{
            cpuScore += 1;
        }
    }
}

#Preview {
    ContentView()
}

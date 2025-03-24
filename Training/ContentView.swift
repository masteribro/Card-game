//
//  ContentView.swift
//  Training
//
//  Created by Cruz Ride on 21/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State  var playerCard = "card2"
    @State var cpucard = "card3"
    
    @State var playerScore:Int = 0
    @State  var cpuScore:Int = 0
    var body: some View {
        ZStack {
            Image("background-cloth")
            VStack{
                Image("logo").frame(minHeight: 100)
                HStack{
                    Image(String(playerCard)).frame(minWidth: 200)
                    Image(String(cpucard)).frame(minWidth: 200)
                }.frame(minHeight: 300)
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                HStack{
                    VStack{
                        Text("Player")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        Text(String(playerScore)) .font(.title) .foregroundColor(Color.white)
                    }.frame(minWidth: 100)
                    VStack{
                        Text("CPU")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        Text(String(cpuScore))  .font(.title).foregroundColor(Color.white)
                    }.frame(minWidth: 100)
                   
                    
                }

            }
        
            
        }
      
       
    }
    
    func deal(){ 
        playerCard = "card" + String(Int.random(in: 2...14))
        cpucard = "card" + String(Int.random(in: 2...14))
        if playerCard > cpucard {
            playerScore += 1
        }else if cpucard > playerCard{
            cpuScore += 1
        }
        
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  Tragamonedas
//
//  Created by Malenita on 06/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCredits = 1500
    @State private var item1 = "apple"
    @State private var item2 = "cherry"
    @State private var item3 = "star"
    let slots = ["apple", "cherry", "star"]
    var body: some View {
        VStack {
            Spacer()
            Text("SwiftUI Slots!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Spacer()
            Text("Credits: " + String(playerCredits))
            Spacer()
            HStack {
                Spacer()
                Image(item1).resizable().aspectRatio(contentMode:.fit)
                Image(item2).resizable().aspectRatio(contentMode:.fit)
                Image(item3).resizable().aspectRatio(contentMode:.fit)
                Spacer()
            }
            Spacer()
            Button(action: {
                let randomSlot1 = Int.random(in: 0...2)
                let randomSlot2 = Int.random(in: 0...2)
                let randomSlot3 = Int.random(in: 0...2)
                item1 = slots[randomSlot1]
                item2 = slots[randomSlot2]
                item3 = slots[randomSlot3]
                
                if item1 == item2 && item1 == item3 {
                    playerCredits+=5
                } else {
                    playerCredits-=5
                }
            }) {
                Text("Spin")
                    .padding()
                    
            }
                .padding()

                .padding([.leading, .trailing], 40)
                .foregroundColor(.white)
                .background(Color(.systemPink))
                .cornerRadius(25)
                .font(.system(size: 18, weight: .bold, design: .default))
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  Hackwich Roll
//
//  Created by Nicholas Papierniak on 10/25/23.
//

import SwiftUI

struct ContentView: View {
    @State private var randomValue = 0
    @State private var rotation = 0.0
    var body: some View {
        VStack {
            Text("Dice Roll")
                .font(.title)
                .padding()
            Image ("pips \(randomValue)")
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
                .padding()
                .onTapGesture {
                    chooseRandom(times: 3)
                   
                    
                }
            Spacer()
        }
    }
    
    func chooseRandom(times:Int) {
        if times > 0 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                randomValue = Int.random(in: 1...6)
                chooseRandom(times: times - 1)
                
            }
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }


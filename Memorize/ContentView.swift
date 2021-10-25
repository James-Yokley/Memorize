//
//  ContentView.swift
//  Memorize
//
//  Created by James Yokley on 10/25/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            CardRow()
            CardRow()
            CardRow()
            CardRow()
        }
    }
}

struct CardView: View{
    var isFaceUp : Bool
    var body: some View{
        ZStack {
            if isFaceUp{
                RoundedRectangle(cornerRadius: 20)
                     .stroke(lineWidth:3)
                 RoundedRectangle(cornerRadius: 20)
                     .fill()
                     .foregroundColor(.white)
                 Text("✈️")
                     .font(.largeTitle)
                 
            } else{
                RoundedRectangle(cornerRadius: 20).fill(.red)
            }
           
        }
        .padding(.horizontal)
        .foregroundColor(.red)
        
    }
}

struct CardRow: View{
    var body: some View{
        HStack{
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
        }
        .padding()
    }
}



















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
            ContentView()
        }
    }
}


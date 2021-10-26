//
//  ContentView.swift
//  Memorize
//
//  Created by James Yokley on 10/25/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GridView()
    }
}

struct CardView: View{
    
    var content: String
    @State var isFaceUp : Bool = false
    
    var body: some View{
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp{
                shape.stroke(lineWidth:3)
                 shape.fill().foregroundColor(.white)
                 Text(content)
                     .font(.largeTitle)
                 
            } else{
                shape.fill()
            }
           
        }
        .foregroundColor(.red)
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct CardRow: View{
    
    var emojis = ["✈️", "🚗", "🚚", "🚃", "🚖", "🚒",
                  "🚑", "🛺", "🛰", "🛳", "⛵️"]
    var emojiCount = 6
    var body: some View{
        HStack{
            ForEach(emojis[0..<5], id: \.self) { emoji in
                CardView(content: emoji)
            }
        }
        .padding()
    }
}

struct GridView: View{
    var body: some View{
        VStack{
            CardRow()
            CardRow()
            CardRow()
        }
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


//
//  ContentView.swift
//  Lab2
//  Group #1
//  Norika Matsuyama (Adam Wardak)
//  10/21/2023
//

import SwiftUI


struct ContentView: View {
    @ObservedObject var viewModel: CatMemoryGame
    
    var gridItems = [GridItem(.flexible()),
                             GridItem(.flexible()),
                             GridItem(.flexible())
    ]
    var body: some View{

            VStack{
                Text("Cat Memory Game")
                    .font(.title)
                
                LazyVGrid(columns: gridItems, spacing: 5) {
                    ForEach(viewModel.cards, id: \.self){ card in
                        CatContent(catItem: card)
                    }
                }
            }.padding(50)
            .background(Color(red: 0.98, green: 0.937, blue: 0.89))
    }
}

struct CatContent: View {
    var catItem: MemoryGame.Card

    var body: some View {
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.yellow)
                
            
            Image(catItem.content)
                .resizable()
                .scaledToFit()
                .frame(height: 100.0)
            
            
            if catItem.isFaceUp{
                    shape.opacity(0)
                }else{
                    shape.opacity(1)
                }
        }
        .onTapGesture {
//            catItem.isFaceUp = !catItem.isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: CatMemoryGame())
        
    }
}

//
//  CatMemoryGame.swift
//  MemoryGame
//
//  Created by Norika on 10/22/23.
//

// This is a View Model

import SwiftUI

class CatMemoryGame: ObservableObject {
    
    @Published private var model: MemoryGame = CreateMemoryGame()
    
    static func CreateMemoryGame() -> MemoryGame{
        return MemoryGame(numberOfPairsOfCards: 6, contentFactory: makeContent)
    }
    
    static func makeContent(index: Int) -> String{
        let images = ["cat1", "cat2", "cat3", "cat4", "cat5", "cat6", "cat7", "cat8", "cat9", 
        ]
        return images[index]
    }
    
    var cards: Array<MemoryGame.Card> {
        return model.cards
    }
    
    var pairs: Int{
        model.numberOfPairs
    }
}

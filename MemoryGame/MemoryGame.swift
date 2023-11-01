//
//  MemoryGame.swift
//  MemoryGame
//
//  Created by Norika on 10/22/23.
//

// Model

import Foundation

struct MemoryGame {
    
    private(set) var cards: Array<Card>
    private(set) var numberOfPairs: Int
    
    struct Card: Identifiable, Hashable{
        var content: String
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var id: Int
        
    }
    
    func chooseCard(card: Card){
//        card.isFaceUp = !card.isFaceUp
    }
    
    init(numberOfPairsOfCards: Int, contentFactory: (Int) -> String) {
        cards = []
        numberOfPairs = numberOfPairsOfCards
        
        for index in 0..<numberOfPairsOfCards{
            let content = contentFactory(index)
            cards.append(Card(content: content, id: index * 2))
            cards.append(Card(content: content, id: index * 2 + 1))
        }
        cards.shuffle()
    }
    
}

//
//  SetGame.swift
//  setGame
//
//  Created by yatish gautam on 2024-02-25.
//

import Foundation
struct SetGame{
    private (set) var cardsOnTable : [CardData] = []
    private (set) var deck: [CardData] = []
    private(set) var selectedCards: [CardData] = []
    
    init(){
        initializeDeck()
    }
    
    private mutating func initializeDeck(){
        deck = CardColor.allCases.flatMap{ colour in
            CardSymbol.allCases.flatMap{ symbol in
                CardShading.allCases.flatMap{ shading in
                    CardItemCount.allCases.compactMap{ itemNumber in
                        CardData(shading: shading, itemCount: itemNumber, cardType: symbol, colour: colour)
                    }
                }
            }
        }.shuffled()
    }
    
    private mutating func intializeCardsOnTable() {
        
    }
    
}




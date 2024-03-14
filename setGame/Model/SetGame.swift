//
//  SetGame.swift
//  setGame
//
//  Created by yatish gautam on 2024-02-25.
//

import Foundation
struct SetGame {
    private (set) var cardsOnTable : [CardData] = []
    private (set) var deck: [CardData] = []
    private(set) var selectedCards: [CardData] = []
    private (set) var score:  Int = 0
    
    init(){
        initializeDeck()
        dealCards(count: 12)
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
    
    mutating func dealCards(count:Int) {
        for _ in 0..<count{
            if let card = deck.popLast(){
                cardsOnTable.append(card)
            }
        }
    }
    
    mutating func selectNewCard(cardToSelect: CardData) {
        if let index = selectedCards.firstIndex(where: {$0.id == cardToSelect.id}){
            selectedCards.remove(at: index)
        }else{
            selectedCards.append(cardToSelect)
            if selectedCards.count == 3{
                checkSet()
            }
        }
    }
    
    private mutating func checkSet(){
        let colors = Set(selectedCards.map { $0.colour })
        let symbols = Set(selectedCards.map { $0.cardType })
        let shadings = Set(selectedCards.map { $0.shading })
        let itemCounts = Set(selectedCards.map { $0.itemCount })
        if (colors.count == 2 || symbols.count == 2 || shadings.count == 2 || itemCounts.count == 2) {
            selectedCards.removeAll()
            return
        }
        score += 1
        self.deck.removeAll{ card in
            selectedCards.contains(where:{$0.id == card.id})
        }
        self.selectedCards.removeAll()
        self.dealCards(count: 3)
    }
    
}




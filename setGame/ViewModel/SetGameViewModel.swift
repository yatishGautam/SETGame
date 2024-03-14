//
//  SetGameViewModel.swift
//  setGame
//
//  Created by yatish gautam on 2024-03-14.
//

import Foundation
class SetGameViewModel : ObservableObject {
    
    @Published var model: SetGame = SetGame()
    
    var cards :[CardData] {
        get{
            model.cardsOnTable
        }
    }
    
    func selectCard(cardToSelect: CardData){
        model.selectNewCard(cardToSelect: cardToSelect)
    }
    
}

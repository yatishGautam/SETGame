//
//  CardData.swift
//  setGame
//
//  Created by yatish gautam on 2024-02-25.
//

import Foundation

struct CardData: Equatable, CustomDebugStringConvertible{
    var id = UUID()
    var shading : CardShading
    var itemCount: CardItemCount
    var cardType: CardSymbol
    var colour: CardColor
    
    var debugDescription: String {
        return "shading: \(shading), itemCount:\(itemCount), cardType: \(cardType), colour: \(colour), id: \(id)"
    }
}

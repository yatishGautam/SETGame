//
//  CardProperties.swift
//  setGame
//
//  Created by yatish gautam on 2024-02-25.
//

import Foundation
enum CardShading: CaseIterable {
    case solid
    case striped
    case open
}

enum CardItemCount: CaseIterable{
    case one
    case two
    case three
}

enum CardColor: CaseIterable{
    case red
    case green
    case purple
}

enum CardSymbol: CaseIterable{
    case oval
    case squiggles
    case diamond
}

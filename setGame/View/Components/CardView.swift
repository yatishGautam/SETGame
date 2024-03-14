//
//  CardView.swift
//  setGame
//
//  Created by yatish gautam on 2024-03-14.
//

import SwiftUI

struct CardView: View {
    let card : CardData
    
    var body: some View {
        ZStack{
            whiteCard
        }
       
            
    }
}

var whiteCard: some View {
    RoundedRectangle(cornerRadius: SetGameUIStyle.CardDimensions.cornerRadius)
        .fill(Color.white)
        .frame(width: SetGameUIStyle.CardDimensions.width, height: SetGameUIStyle.CardDimensions.height)
        .shadow(radius: SetGameUIStyle.CardDimensions.shadow)
        .border(.fill, width: SetGameUIStyle.CardDimensions.borderWidth)
}



#Preview {
    CardView(card: CardData(shading: .solid, itemCount: .one, cardType: .diamond, colour: .red))
}

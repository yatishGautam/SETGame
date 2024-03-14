//
//  Striped.swift
//  setGame
//
//  Created by yatish gautam on 2024-03-14.
//

import SwiftUI

struct Striped: View {
    let color: Color
    let spacing: CGFloat = SetGameUIStyle.CardDimensions.stripeDistance
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let count: Int = Int(geometry.size.width / spacing)
                for i in 0...count {
                    let x = CGFloat(i) * spacing
                    path.move(to: CGPoint(x: x, y: 0))
                    path.addLine(to: CGPoint(x: x, y: geometry.size.height))
                }
            }
            .stroke(color, lineWidth: 1)
        }
    }
}

#Preview {
    Striped(color: .red)
}

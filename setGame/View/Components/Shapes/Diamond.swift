//
//  Diamond.swift
//  setGame
//
//  Created by yatish gautam on 2024-03-14.
//

import SwiftUI

struct Diamond: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        let midX = rect.midX
        let midY = rect.midY
        let width = rect.width / 2
        let height = rect.height / 2

        path.move(to: CGPoint(x: midX, y: midY - height))
        path.addLine(to: CGPoint(x: midX - width, y: midY))
        path.addLine(to: CGPoint(x: midX, y: midY + height))
        path.addLine(to: CGPoint(x: midX + width, y: midY))
        path.closeSubpath()

        return path
    }
}

#Preview {
    Diamond()
}

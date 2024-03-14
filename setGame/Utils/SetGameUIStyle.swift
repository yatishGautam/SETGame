//
//  UiStyleSheet.swift
//  setGame
//
//  Created by yatish gautam on 2024-03-14.
//

import Foundation
import UIKit
import SwiftUI


struct SetGameUIStyle {
    // Card Dimensions
    struct CardDimensions {
        static let width: CGFloat = 200
        static let height: CGFloat = 300
        static let cornerRadius: CGFloat = 10
        static let borderWidth: CGFloat = 1
        static let shadow: CGFloat = 6
        static let stripeDistance : CGFloat = 10
    }
    
    // Color Scheme
    struct ColorScheme {
        static let backgroundColor = Color("BackgroundColor") // Define this in your asset catalog
        static let cardColor = Color.white
        static let borderColor = Color.gray
        static let selectedBorderColor = Color.blue
        static let textColor = Color.black
        
        // Specific game colors for shapes or symbols
        static let shapeColor1 = Color.red
        static let shapeColor2 = Color.green
        static let shapeColor3 = Color.purple
    }
    
    // Typography
    struct Typography {
        static let font = Font.system(size: 14, weight: .medium, design: .default)
    }
}

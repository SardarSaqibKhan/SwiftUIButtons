//
//  SwiftUIView.swift
//  SwiftUIButtons
//
//  Created by sardar saqib on 21/03/2025.
//

import SwiftUI

@available(iOS 13.0.0, *)
public struct PrimaryGradientButton: View {
    var text: String
    var fontSize: CGFloat
    var gradientColors: [Color]
    var startPoint: UnitPoint
    var endPoint: UnitPoint
    var foregroundColor: Color
    var cornerRadius: CGFloat
    var action: () -> Void
    
    public init(text: String, fontSize: CGFloat, gradientColors: [Color],startPoint: UnitPoint, endPoint: UnitPoint, foregroundColor: Color, cornerRadius: CGFloat, action: @escaping () -> Void) {
        self.text = text
        self.fontSize = fontSize
        self.gradientColors = gradientColors
        self.startPoint = startPoint
        self.endPoint = endPoint
        self.foregroundColor = foregroundColor
        self.cornerRadius = cornerRadius
        self.action = action
    }
   
    
    public var body: some View {
        Button(action: action) {
            Text(text)
                .font(.system(size: fontSize))
                .foregroundColor(foregroundColor)
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    LinearGradient(gradient: Gradient(colors: gradientColors), startPoint: startPoint, endPoint: endPoint)
                )
                .cornerRadius(cornerRadius)
        }
    }
}

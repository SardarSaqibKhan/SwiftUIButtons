//
//  SwiftUIView.swift
//  SwiftUIButtons
//
//  Created by sardar saqib on 21/03/2025.
//

import SwiftUI

@available(iOS 13.0.0, *)
public struct PrimaryScaleAnimationButton: View {
    var text: String
    var fontSize: CGFloat
    var backgroundColor: Color
    var foregroundColor: Color
    var cornerRadius: CGFloat
    var action: () -> Void
    
    public init(text: String, fontSize: CGFloat, backgroundColor: Color, foregroundColor: Color, cornerRadius: CGFloat, action: @escaping () -> Void) {
        self.text = text
        self.fontSize = fontSize
        self.backgroundColor = backgroundColor
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
                .background(backgroundColor)
                .cornerRadius(cornerRadius)
        }
        .buttonStyle(ScaleButtonStyle())
    }
}

// adding animations on button
struct ScaleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.90 : 1.0)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

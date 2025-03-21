//
//  SwiftUIView.swift
//  SwiftUIButtons
//
//  Created by sardar saqib on 21/03/2025.
//

import SwiftUI

@available(iOS 13.0.0, *)
public struct PrimaryHapticButton: View {
    @State private var triggerHaptic = false
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
        if #available(iOS 17.0, *) {
            Button(action: {
                triggerHaptic.toggle()
                action()
            }) {
                Text(text)
                    .font(.system(size: fontSize))
                    .foregroundColor(foregroundColor)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(backgroundColor)
                    .cornerRadius(cornerRadius)
            }
            .sensoryFeedback(.impact(flexibility: .solid, intensity: 1.0), trigger: triggerHaptic)
        } else {
            Button(action: action) {
                Text(text)
                    .font(.system(size: fontSize))
                    .foregroundColor(foregroundColor)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(backgroundColor)
                    .cornerRadius(cornerRadius)
            }

        }
    }
}

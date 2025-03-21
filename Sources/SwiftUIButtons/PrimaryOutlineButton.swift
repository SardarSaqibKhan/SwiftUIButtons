//
//  SwiftUIView.swift
//  SwiftUIButtons
//
//  Created by sardar saqib on 21/03/2025.
//

import SwiftUI

@available(iOS 13.0.0, *)
struct PrimaryOutlineButton: View {
    var text: String
    var fontSize: CGFloat
    var backgroundColor: Color
    var foregroundColor: Color
    var borderColor: Color
    var cornerRadius: CGFloat
    var lineWidth: CGFloat
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .font(.system(size: fontSize))
                .foregroundColor(foregroundColor)
                .padding()
                .frame(maxWidth: .infinity)
                .background(backgroundColor)
                .cornerRadius(cornerRadius)
                .overlay(
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .stroke(borderColor, lineWidth: lineWidth)
                )
        }
    }
}

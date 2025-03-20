//
//  PrimaryButton.swift
//  
//
//  Created by sardar saqib on 20/03/2025.
//

import SwiftUI

@available(iOS 13.0.0, *)
public struct PrimaryButton: View {
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
    }
}
@available(iOS 13.0.0, *)
#Preview {
    PrimaryButton(
        text: "Test Button",
        fontSize: 17,
        backgroundColor: .blue,
        foregroundColor: .black,
        cornerRadius: 10) {
            
        }
}

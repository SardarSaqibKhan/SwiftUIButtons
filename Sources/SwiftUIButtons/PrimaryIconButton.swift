//
//  SwiftUIView.swift
//  SwiftUIButtons
//
//  Created by sardar saqib on 21/03/2025.
//

import SwiftUI

@available(iOS 13.0.0, *)
public struct PrimaryIconButton: View {
    var text: String
    var fontSize: CGFloat
    var iconName: String
    var backgroundColor: Color
    var foregroundColor: Color
    var cornerRadius: CGFloat
    var action: () -> Void
    
    public init(text: String, fontSize: CGFloat,iconName:String, backgroundColor: Color, foregroundColor: Color, cornerRadius: CGFloat, action: @escaping () -> Void) {
        self.text = text
        self.fontSize = fontSize
        self.iconName = iconName
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.cornerRadius = cornerRadius
        self.action = action
    }
   
    
    public var body: some View {
        Button(action: action) {
            HStack {
                Text(text)
                    .font(.system(size: fontSize, weight: .semibold))
                Image(systemName: iconName)
                    .font(.system(size: fontSize))
            }
            .foregroundColor(foregroundColor)
            .padding()
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(cornerRadius)
        }
    }
}

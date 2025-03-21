//
//  SwiftUIView.swift
//  SwiftUIButtons
//
//  Created by sardar saqib on 21/03/2025.
//

import SwiftUI

@available(iOS 13.0.0, *)
public struct PrimaryCircularButton: View {
    var iconName: String
    var iconSize: CGFloat
    var backgroundColor: Color
    var foregroundColor: Color
    var action: () -> Void
    
    public init(iconName: String, iconSize: CGFloat, backgroundColor: Color, foregroundColor: Color, action: @escaping () -> Void) {
        self.iconName = iconName
        self.iconSize = iconSize
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.action = action
    }
   
    
    public var body: some View {
        Button(action: action) {
            Image(systemName: iconName)
                .font(.system(size: iconSize))
                .foregroundColor(foregroundColor)
                .padding()
                .background(backgroundColor)
                .clipShape(Circle())
        }
    }
}

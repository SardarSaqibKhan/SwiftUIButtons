// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

@available(iOS 13.0.0, *)
public struct SwiftUIButtons {
    
    @MainActor public static func primaryButton(
        text: String,
        fontsize: CGFloat = 17,
        bgColor: Color = .blue,
        fgColor: Color = .white,
        cornerRadius: CGFloat = 10,
        action: @escaping () -> Void
    ) -> some View {
        PrimaryButton(
            text: text,
            fontSize: fontsize,
            backgroundColor: bgColor,
            foregroundColor: fgColor,
            cornerRadius: cornerRadius,
            action: action
        )
    }
    
    @MainActor public static func primaryOutlineButton(text: String,
                                                        fontsize: CGFloat = 17,
                                                        bgColor: Color = .clear,
                                                        fgColor: Color = .blue,
                                                        borderColor: Color = .blue,
                                                        cornerRadius: CGFloat = 10,
                                                        lineWidth: CGFloat = 2,
                                                        action: @escaping () -> Void) -> some View {
        PrimaryOutlineButton(
            text: text,
            fontSize: fontsize,
            backgroundColor: bgColor,
            foregroundColor: fgColor,
            borderColor: borderColor,
            cornerRadius: cornerRadius,
            lineWidth: lineWidth,
            action: action
        )
    }
    
    @MainActor public static func primaryGradientButton(text: String,
                                                        fontsize: CGFloat = 17,
                                                        gradientColors: [Color] = [.blue, .purple],
                                                        startPoint: UnitPoint = .leading,
                                                        endPoint: UnitPoint = .trailing,
                                                        fgColor: Color = .white,
                                                        cornerRadius: CGFloat = 10,
                                                        lineWidth: CGFloat = 2,
                                                        action: @escaping () -> Void) -> some View {
        PrimaryGradientButton(
            text: text,
            fontSize: fontsize,
            gradientColors: gradientColors,
            startPoint: startPoint,
            endPoint: endPoint,
            foregroundColor: fgColor,
            cornerRadius: cornerRadius,
            action: action
        )
        
    }
    
    @MainActor public static func primaryScaleAnimationButton(
        text: String,
        fontsize: CGFloat = 17,
        bgColor: Color = .blue,
        fgColor: Color = .white,
        cornerRadius: CGFloat = 10,
        action: @escaping () -> Void
    ) -> some View {
        PrimaryScaleAnimationButton(
            text: text,
            fontSize: fontsize,
            backgroundColor: bgColor,
            foregroundColor: fgColor,
            cornerRadius: cornerRadius,
            action: action
        )
    }
    
    @MainActor public static func primaryIconButton(
        text: String,
        fontsize: CGFloat = 17,
        iconName: String = "",
        bgColor: Color = .blue,
        fgColor: Color = .white,
        cornerRadius: CGFloat = 10,
        action: @escaping () -> Void
    ) -> some View {
        PrimaryIconButton(
            text: text,
            fontSize: fontsize,
            iconName: iconName,
            backgroundColor: bgColor,
            foregroundColor: fgColor,
            cornerRadius: cornerRadius,
            action: action
        )
    }
    
    @MainActor public static func primaryCircularButton(
        iconName: String = "",
        iconSize: CGFloat = 20,
        bgColor: Color = .blue,
        fgColor: Color = .white,
        action: @escaping () -> Void
    ) -> some View {
        PrimaryCircularButton(
            iconName: iconName,
            iconSize: iconSize,
            backgroundColor: bgColor,
            foregroundColor: fgColor,
            action: action
        )
    }
    
    
    @MainActor public static func primaryHapticButton(
        text: String,
        fontsize: CGFloat = 17,
        bgColor: Color = .blue,
        fgColor: Color = .white,
        cornerRadius: CGFloat = 10,
        action: @escaping () -> Void
    ) -> some View {
        PrimaryHapticButton(
            text: text,
            fontSize: fontsize,
            backgroundColor: bgColor,
            foregroundColor: fgColor,
            cornerRadius: cornerRadius,
            action: action
        )
    }
    
}


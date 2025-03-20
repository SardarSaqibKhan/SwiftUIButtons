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
}

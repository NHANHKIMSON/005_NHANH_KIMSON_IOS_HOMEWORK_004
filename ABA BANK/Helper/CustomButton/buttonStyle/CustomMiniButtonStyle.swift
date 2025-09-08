//
//  CustomMiniButtonStyle.swift
//  ABA BANK
//
//  Created by Apple on 9/6/25.
//

import SwiftUI
struct CustomMiniButtonStyle: ButtonStyle {
    var isBg: Color
    var foregroundColor: Color = .clear
    func makeBody(configuration: Configuration) -> some View{
        configuration.label
            .padding(6)
            .font(.caption)
            .background(isBg == Color.clear ? .clear : isBg)
            .cornerRadius(8)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
    }
}

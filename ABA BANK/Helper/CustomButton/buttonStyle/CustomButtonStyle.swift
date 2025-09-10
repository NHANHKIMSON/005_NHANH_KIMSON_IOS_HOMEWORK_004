//
//  CustomButtonStyle.swift
//  ABA BANK
//
//  Created by Apple on 9/5/25.
//
import SwiftUI
struct CustomButtonStyle: ButtonStyle{
    @Environment(\.colorScheme) var colorScheme
    func makeBody(configuration: Configuration) -> some View{
        configuration.label
            .padding(0)
            .foregroundStyle(colorScheme == .dark ? .white : .black)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}

//
//  Untitled.swift
//  ABA BANK
//
//  Created by Apple on 9/6/25.
//
import SwiftUI
struct CustomMiniButton: View {
    var isBg: Color
    var label: String
    var body: some View {
        Button(action: {}, label: {
            Text(label)
        })
        .buttonStyle(CustomMiniButtonStyle(isBg: isBg, foregroundColor: .clear))
    }
}

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
    @Binding var selected: Int
    var body: some View {
        Button(action: {
            selected = selected == 1 ? 2 : 1
        }, label: {
            Text(label)
        })
        .buttonStyle(CustomMiniButtonStyle(isBg: isBg, foregroundColor: .clear))
    }
}

//
//  Untitled.swift
//  ABA BANK
//
//  Created by Apple on 9/5/25.
//
import SwiftUI
struct ImageWithButton: View {
    var action: ()-> Void = {}
    var isFit: Bool = true
    var image: String?
    var text: String?
    var body: some View {
        Button(action: action, label: {
            HStack{
                CustomImageContent(isFit: self.isFit, image: self.image ?? "")
                    .frame(width: 24, height: 24)
                Text(text ?? "")
            }
        })
        .buttonStyle(CustomButtonStyle())
    }
}

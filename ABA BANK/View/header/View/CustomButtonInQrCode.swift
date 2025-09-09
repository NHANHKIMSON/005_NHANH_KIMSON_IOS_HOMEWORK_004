//
//  CustomButtonInQr.swift
//  ABA BANK
//
//  Created by Apple on 9/9/25.
//
import SwiftUI
struct CustomButtonInQrCode: View {
    var action: ()-> Void = {}
    var icon: String?
    var text: String?
    var body: some View {
        VStack{
            Button(action: action, label: {
                Image(systemName: icon ?? "")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .padding(12)
                    .background(.ultraThinMaterial)
                    .cornerRadius(.infinity)
            })
            .buttonStyle(CustomButtonStyle())
            Text(text ?? "")
        }
    }
}

//
//  QRCodeView.swift
//  ABA BANK
//
//  Created by Apple on 9/9/25.
//
import SwiftUI
struct QRCodeView: View {
    let text: String
    var body: some View {
        if let qrImage = generateQrCode(from: text) {
            Image(uiImage: qrImage)
                .interpolation(.none) // prevents blur
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
        } else {
            Text("Failed to generate QR code")
        }
    }
}

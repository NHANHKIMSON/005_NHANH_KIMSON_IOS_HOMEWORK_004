//
//  Menu.swift
//  ABA BANK
//
//  Created by Apple on 9/6/25.
//
class CardContent: Identifiable{
    var id = UUID()
    var image: String
    var text: String
    init(image: String, text: String) {
        self.image = image
        self.text = text
    }
}

import SwiftUI
struct Menu: View {
    var geometry: GeometryProxy
    let rows: [GridItem] = [
        .init(.flexible()),
        .init(.flexible())
    ]
    var cards: [CardContent] = [
        CardContent(image: "wallet", text: "Accounts"),
        CardContent(image: "favorite", text: "Favorites"),
        CardContent(image: "bill", text: "Pay bils"),
        CardContent(image: "scan-fill", text: "ABA Scan"),
        CardContent(image: "transericon", text: "Transfer"),
        CardContent(image: "service", text: "Services")
    ]

    var body: some View {
        LazyHGrid(rows: rows){
            ForEach(cards){card in
                Card(image: card.image, text: card.text, geometry: geometry)
            }
        }
        .padding()
        .frame(maxWidth: geometry.size.width)
        .background(.ultraThinMaterial)
        .cornerRadius(geometry.size.width * 0.04)
    }
}
#Preview {
    ContentView()
        .environmentObject(User())
}

struct Card: View {
    var image: String?
    var text: String?
    var geometry: GeometryProxy
    var border: Color = .clear
    var size: CGFloat = 40.00
    var body: some View {
        VStack(alignment: .center){
            CustomImageContent(isFit: true, image: image ?? "", border: border)
                .frame(width: size, height: size)
            Text(text ?? "")
        }
        .frame(width: geometry.size.width / 3.8,
               height: geometry.size.width / 3.8)
        .background(.white)
        .foregroundStyle(.black)
        .bold()
        .cornerRadius(14)
    }
}

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
        CardContent(image: "bill", text: "Accounts"),
        CardContent(image: "transericon", text: "Accounts"),
        CardContent(image: "favorite", text: "Accounts"),
        CardContent(image: "scan-fill", text: "Accounts"),
        CardContent(image: "service", text: "Accounts")
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
        .padding()
        .background(.gray)
        .cornerRadius(14)
    }
}

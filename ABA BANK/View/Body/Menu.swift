//
//  Menu.swift
//  ABA BANK
//
//  Created by Apple on 9/6/25.
//
import SwiftUI
import Foundation
import UIKit

class CardContent: Identifiable{
    var id = UUID()
    var image: String
    var text: String
    init(image: String, text: String) {
        self.image = image
        self.text = text
    }
}

struct Menu: View {
    var geometry: GeometryProxy
    let rows: [GridItem] = [
        .init(.flexible()),
        .init(.flexible())
    ]
    @State var cards: [CardContent] = [
        CardContent(image: "wallet", text: "Accounts"),
        CardContent(image: "favorite", text: "Favorites"),
        CardContent(image: "bill", text: "Pay bils"),
        CardContent(image: "scan-fill", text: "ABA Scan"),
        CardContent(image: "transericon", text: "Transfer"),
        CardContent(image: "service", text: "Services")
    ]
    
    @State private var draggingCard: CardContent?

    var body: some View {
        LazyHGrid(rows: rows){
            ForEach(cards){card in
                Card(image: card.image, text: card.text, geometry: geometry)
                    .opacity(draggingCard?.id == card.id ? 0.8 : 1.0) // hide dragged item
                    .onDrag {
                        self.draggingCard = card
                        return NSItemProvider(object: card.text as NSString)
                    }
                    .onDrop(of: [.text], delegate: CardDropDelegate(
                        item: card,
                        cards: $cards,
                        draggingCard: $draggingCard
                    ))
            }
        }
        .padding()
        .frame(maxWidth: geometry.size.width)
        .background(.ultraThinMaterial)
        .cornerRadius(geometry.size.width * 0.04)
    }
}


struct CardDropDelegate: DropDelegate {
    let item: CardContent
    @Binding var cards: [CardContent]
    @Binding var draggingCard: CardContent?
    
    func performDrop(info: DropInfo) -> Bool {
        draggingCard = nil
        return true
    }
    
    
    func dropUpdated(info: DropInfo) -> DropProposal? {
        // 👇 This tells SwiftUI we want to move, not copy
        return DropProposal(operation: .move)
    }
    
    func dropEntered(info: DropInfo) {
        guard let draggingCard = draggingCard,
              draggingCard.id != item.id,
              let fromIndex = cards.firstIndex(where: { $0.id == draggingCard.id }),
              let toIndex = cards.firstIndex(where: { $0.id == item.id }) else { return }
        
        withAnimation {
            cards.move(fromOffsets: IndexSet(integer: fromIndex), toOffset: toIndex > fromIndex ? toIndex + 1 : toIndex)
        }
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

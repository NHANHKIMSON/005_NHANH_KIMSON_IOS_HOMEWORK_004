//
//  BalanceDetailBoard.swift
//  ABA BANK
//
//  Created by Apple on 9/6/25.
//
import SwiftUI
struct balanceDetailBoard: View{
    var balance: Double = 12.00
    @State var isHide: Bool = false
    var geomentry: GeometryProxy
    var body: some View{
            VStack(alignment: .leading){
                HStack{
                    Text("\(currencyAutoFormat(amount: balance))")
                        .blur(radius:  isHide ? 10 : 0)
                    CustomButtonWithIcon(isHide: $isHide)
                }
                HStack{
                    CustomMiniButton(isBg: Color.blue, label: "Default")
                    CustomMiniButton(isBg: Color.clear, label: "Saving")
                }
                Spacer()
                VStack{
                    HStack{
                        ImageWithButton(action: {}, image: "receive-circle", text: "Receive Money")
                        ImageWithButton(action: {}, image: "send-circle", text: "Sent Money")
                    }
                }
            }
            .padding()
            .frame(height: geomentry.size.height * 0.25)
            .frame(maxWidth: geomentry.size.width, alignment: .leading)
            .background(.ultraThinMaterial)
            .cornerRadius(geomentry.size.width * 0.04)
    }
}
#Preview{
    ContentView()
        .environmentObject(User())
}

//
//  Untitled.swift
//  ABA BANK
//
//  Created by Apple on 9/8/25.
//
import SwiftUI
struct FavoriteCard: View {
    var colors: [Color] = [.yellow, .blue, .green, .brown]
    var name: String = "Nhanh Kimson"
    var padding: CGFloat = 16.00
    var body: some View {
        VStack(alignment: .leading){
            Text(getShortName(fullName: name))
                .font(.caption2)
                .bold()
                .frame(width: 20, height: 20)
                .padding(padding)
                .background(randomColor(from: colors))
                .overlay{
                    RoundedRectangle(cornerRadius: .infinity)
                        .stroke(Color.black, lineWidth: 2)
                }
                .clipShape(RoundedRectangle(cornerRadius: .infinity))
            Text(name)
                .foregroundStyle(.black)
                .font(.caption2)
                .padding(.bottom)
        }
        .padding()
        .background(.white)
        .cornerRadius(24)
    }
}
#Preview{
    ContentView()
        .environmentObject(User())
}

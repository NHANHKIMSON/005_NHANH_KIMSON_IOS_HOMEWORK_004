//
//  Untitled.swift
//  ABA BANK
//
//  Created by Apple on 9/10/25.
//

import SwiftUI
struct ButtonIconHorizontal: View {
    var action: ()-> Void = {}
    var text: String?
    var icon: String?
    var body: some View {
        Button(action: action, label: {
            HStack{
                Image(systemName: icon ?? "")
                Text(text ?? "")
            }
            .padding(12)
            .foregroundStyle(.black)
            .background(.white)
            .font(.caption)
            .cornerRadius(.infinity)
        })
        .frame(maxWidth: .infinity, alignment: .center)
        .buttonStyle(CustomButtonStyle())
    }
}
#Preview {
    ContentView()
        .environmentObject(User())
    
//    EditingHomeView()
}

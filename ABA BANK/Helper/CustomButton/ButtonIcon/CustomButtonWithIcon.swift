//
//  Untitled.swift
//  ABA BANK
//
//  Created by Apple on 9/6/25.
//

import SwiftUI
struct CustomButtonWithIcon: View {
    @Binding var isHide: Bool
    var body: some View {
        Button(action: {
            withAnimation{
                isHide = isHide == true ? false : true
            }
        }, label: {
            Image(systemName: isHide ? "eye.slash" : "eye")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .padding(4)
                .background(Color.cyan)
                .cornerRadius(24)
        })
        .buttonStyle(CustomButtonStyle())
    }
}
#Preview {
    ContentView()
        .environmentObject(User())
}

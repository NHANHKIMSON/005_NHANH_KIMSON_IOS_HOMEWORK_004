//
//  TopHeader.swift
//  ABA BANK
//
//  Created by Apple on 9/5/25.
//
import SwiftUI
struct TopHeader: View {
    var userProfile: String
    var userFullName: String
    var icon: String
    var secondIcon: String
    var body: some View {
        HStack{
            HStack{
                CustomImageContent(isFit: true, image: userProfile, border: Color.white)
                    .frame(width: 42, height: 42)
                VStack(alignment: .leading, spacing: 4){
                    Text("\(userFullName)!")
                        .font(.headline)
                    Text("View profile")
                        .font(.caption)
                }
            }
            Spacer()
            HStack(spacing: 20){
                ImageWithButton(action: {}, image: icon)
                ImageWithButton(action: {}, image: secondIcon)
                    .frame(width: 24, height: 24)
            }
        }
    }
}
#Preview{
    ContentView()
        .environmentObject(User())
}

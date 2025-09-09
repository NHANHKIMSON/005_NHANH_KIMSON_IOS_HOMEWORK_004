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
    @State var isShowingFullScreen: Bool = false
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
                    ImageWithButton(action: {
                        isShowingFullScreen = true
                    }, image: secondIcon)
                    .fullScreenCover(isPresented: $isShowingFullScreen){
                        FullScreenCoverView(showingScreenCover: $isShowingFullScreen)
                    }
                }
            }
        }
}
#Preview{
    ContentView()
        .environmentObject(User())
}

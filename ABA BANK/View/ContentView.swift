//
//  ContentView.swift
//  ABA BANK
//
//  Created by Apple on 9/5/25.
//
import SwiftUI
struct ContentView: View {
    @EnvironmentObject var user: User
    var body: some View {
        GeometryReader{ geomentry in
            ZStack{
                CustomImageContent(image: "BonTeaySrey")
                    .allowsHitTesting(false)
                    .ignoresSafeArea(.all)
                VStack{
                    TopHeader(userProfile: user.profileImage, userFullName: user.fullName, icon: "notificatioIcon", secondIcon: "IconGoToQR")
                        .padding(.horizontal)
                    ScrollView(.vertical){
                        VStack(alignment: .leading){
                            balanceDetailBoard(geomentry: geomentry)
                            Menu(geometry: geomentry)
                            Text("New Information")
                            Slicder(geomentry: geomentry)
                            Text("Favorite")
                            Favorite(geometry: geomentry)
                        }
                        .padding([.top, .leading, .trailing])
                    }
                    
                }
                
            }
            .preferredColorScheme(.dark)
        }
    }
}


#Preview {
    ContentView()
        .environmentObject(User())
}

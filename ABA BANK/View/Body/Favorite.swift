//
//  Favorite.swift
//  ABA BANK
//
//  Created by Apple on 9/6/25.
//

import SwiftUI
struct Favorite: View {
    var users = User.users
    var geometry: GeometryProxy
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack(spacing: 116){
                ForEach(users){ user in
//                    FavoriteCard(name: user.fullName)
                    ExplorServicesCard(geometry: geometry)
                }
            }
            .padding(.leading)
            .padding(.vertical, 8)
        }
        .background(.ultraThinMaterial)
        .cornerRadius(geometry.size.width * 0.04)
    }
}
#Preview {
    ContentView()
        .environmentObject(User())
}

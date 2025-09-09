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
        NavigationStack{
            GeometryReader{ geomentry in
                ZStack{
                    CustomImageContent(image: "Moon Night")
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
                                HStack{
                                    Text("Favorite")
                                    Spacer()
                                    NavigationLink(destination: {
                                      Text("View All")
                                    },
                                    label:{
                                        Text("VIEW ALL")
                                            .foregroundStyle(.white)
                                    })
                                }
                                
                                HStack{
                                    Text("Government Services")
                                    Spacer()
                                    NavigationLink(destination: {
                                      Text("View All")
                                    },
                                    label:{
                                        Text("VIEW ALL")
                                            .foregroundStyle(.white)
                                    })
                                }
                            }
                            .padding([.top, .leading, .trailing])
                        }
                        
                    }
                    
                }
                .foregroundStyle(.white)
                .preferredColorScheme(.light)
            }
        }
    }
}
    


#Preview {
    ContentView()
        .environmentObject(User())
}

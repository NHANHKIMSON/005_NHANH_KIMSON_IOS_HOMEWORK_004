//
//  ContentView.swift
//  ABA BANK
//
//  Created by Apple on 9/5/25.
//
import SwiftUI
struct ContentView: View {
    @EnvironmentObject var user: User
    @State var isEditingHome: Bool = false
    @State var selectedTheme: Int = 7
    var body: some View {
        NavigationStack{
            GeometryReader{ geomentry in
                ZStack{
                    CustomImageContent(image: Theme.imageByIden(iden: selectedTheme))
                            .allowsHitTesting(false)
                            .ignoresSafeArea(.all)
                    VStack{
                        TopHeader(userProfile: user.profileImage, userFullName: user.fullName, icon: "notificatioIcon", secondIcon: "IconGoToQR")
                            .padding(.horizontal)
                        ScrollView(.vertical){
                            VStack(alignment: .leading){
                                // Balance View
                                balanceDetailBoard(geomentry: geomentry)
                                
                                // Menu View
                                Menu(geometry: geomentry)
                                
                            // New Information View
                                Text("New Information")
                                Slicder(geomentry: geomentry)
                                
                                
                                // Favorite View
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
                                
                                
                                ExplorService(geometry: geomentry)
                                
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
                                GovernmentService(geometry: geomentry)
                                ButtonIconHorizontal(action: {
                                     isEditingHome = true
                                }, text: "Edit Home", icon: "highlighter")
                                    .sheet(isPresented: $isEditingHome){
                                        EditingHomeView(selectedTheme: $selectedTheme)
                                            .background(Color(UIColor.secondarySystemBackground))
                                            .presentationDetents([.medium, .fraction(0.8)])
                                            
                                    }
                            }
                            .padding([.top, .leading, .trailing])
                        }
                        
                    }
                    
                }
                .foregroundStyle(.white)
                .preferredColorScheme(.light)
                .gesture(
                    LongPressGesture(maximumDistance: 0.3)
                        .onEnded{ _ in
                            isEditingHome = true
                        }
                    
                )
            }
        }
    }
}
    


#Preview {
    ContentView()
        .environmentObject(User())
    
//    EditingHomeView()
}




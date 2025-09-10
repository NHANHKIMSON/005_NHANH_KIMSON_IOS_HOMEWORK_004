//
//  Untitled.swift
//  ABA BANK
//
//  Created by Apple on 9/10/25.
//


import SwiftUI
struct EditingHomeView: View {
    @Binding var selectedTheme: Int
    var body: some View {
        VStack(alignment: .leading){
            Text("Appearance")
                .font(.largeTitle)
                .bold()
            MenuAppearance()
            ThemeAppearance(selectedTheme: $selectedTheme)
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding([.leading, .top])
        .foregroundStyle(.black)
    }
}

#Preview {
    ContentView()
        .environmentObject(User())
//    ThemeAppearance()
    
}

struct ThemeAppearance: View {
    @Binding var selectedTheme: Int
    var themes = Theme.themes
    var body: some View {
        GeometryReader{ geometry in
            ScrollView(.horizontal, showsIndicators: false){
                LazyHStack(alignment: .center, spacing: 16){
                    ForEach(themes){ theme in
                        Button(action: {
                            selectedTheme = theme.identify
                        }, label: {
                            VStack {
                                Image(theme.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: geometry.size.width * 0.36, height: geometry.size.height * 0.8)
                                    .overlay{
                                        RoundedRectangle(cornerRadius: geometry.size.width * 0.04)
                                            .stroke(.blue, lineWidth: selectedTheme ==   (theme.identify) ? 7 : 0)
                                    }
                                    .clipShape(RoundedRectangle(cornerRadius: geometry.size.width * 0.04))
                                Text(theme.text)
                            }
                                
                        })
                        .buttonStyle(CustomButtonStyle())
                    }
                }
            }
        }
    }
}


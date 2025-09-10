//
//  AppearanceSheet.swift
//  ABA BANK
//
//  Created by Apple on 9/10/25.
//

import SwiftUI
struct MenuAppearance:View{
    var items = ["Themes", "Dark Mode", "Homescreen", "Accessibility"]
    @State var selectedTab: Int = 0
    var body: some View{
        
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(items.indices, id: \.self){ item in
                    Button(action: {
                        
                    }, label: {
                        Text(items[item])
                            .padding(12)
                            .foregroundStyle(Color.gray)
                            .background(.white)
                            .cornerRadius(.infinity)
                    })
                    .buttonStyle(CustomButtonStyle())
                }
            }
        }
    }
}


#Preview {
    MenuAppearance()
}

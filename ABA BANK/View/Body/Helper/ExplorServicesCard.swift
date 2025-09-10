//
//  ExplorServicesCard.swift
//  ABA BANK
//
//  Created by Apple on 9/8/25.
//
import SwiftUI



struct ExplorServicesCard: View{
    var geometry: GeometryProxy
    var serviceName: String = ""
    var image: String = ""
    var body: some View{
        VStack(alignment: .leading){
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: geometry.size.width * 0.20, height: geometry.size.width * 0.20)
                .overlay{
                    RoundedRectangle(cornerRadius: geometry.size.width * 0.08)
                        .stroke(.white,  lineWidth: 6)
                }
                .clipShape(RoundedRectangle(cornerRadius: geometry.size.width * 0.08))
            Text(serviceName)
                .font(.footnote)
        }
        .foregroundStyle(.white)
    }
}
#Preview {
    ContentView()
        .environmentObject(User())
}





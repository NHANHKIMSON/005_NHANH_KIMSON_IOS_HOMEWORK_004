//
//  ExplorServicesCard.swift
//  ABA BANK
//
//  Created by Apple on 9/8/25.
//
import SwiftUI


class ExplorServices: Identifiable{
    var id: UUID = UUID()
    var serviceName: String
    var image: String
    var serviceImage: String
    init(id: UUID, serviceName: String, image: String, serviceImage: String) {
        self.id = id
        self.serviceName = serviceName
        self.image = image
        self.serviceImage = serviceImage
    }
}


struct ExplorServicesCard: View{
    var geometry: GeometryProxy
    var serviceName: String = ""
    var image: String = "VET"
    var serviceImage: String = ""
    var body: some View{
        GeometryReader{ geometry in
            VStack(alignment: .leading){
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .frame(width: 40, height: 40)
                    .overlay{
                        RoundedRectangle(cornerRadius: .infinity)
                            .stroke(.white,  lineWidth: 3)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: .infinity))
                Text("VEAT")
                    .foregroundStyle(.black)
                    .font(.caption2)
                    .padding(.bottom)
            }
//            .frame(width: 100, height: 120)
            .background(.white)
            .cornerRadius(24)
        }
    }
}
#Preview {
    ContentView()
        .environmentObject(User())
}

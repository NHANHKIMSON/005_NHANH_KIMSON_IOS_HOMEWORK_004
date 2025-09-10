//
//  ExplorService.swift
//  ABA BANK
//
//  Created by Apple on 9/9/25.
//

class ExplorServices: Identifiable{
    var id: UUID = UUID()
    var serviceName: String
    var image: String
    init(serviceName: String, image: String) {
        self.serviceName = serviceName
        self.image = image
    }
    static var services = [
        ExplorServices(serviceName: "U&Me Spa and", image: "U&Me"),
        ExplorServices(serviceName: "Metfone Service", image: "metfonelogo"),
        ExplorServices(serviceName: "VET Express", image: "VET"),
        ExplorServices(serviceName: "Cambolink21", image: "cambolink"),
        ExplorServices(serviceName: "ComboTicket", image: "comboticket"),
        ExplorServices(serviceName: "Manulige Service", image: "manulife"),
    ]
}

import SwiftUI
struct ExplorService: View {
    var services = ExplorServices.services
    var geometry: GeometryProxy
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack{
                ForEach(services){ service in
                    ExplorServicesCard(geometry: geometry, serviceName: service.serviceName, image: service.image)
                        .padding()
                }
            }
        }
        .background(.ultraThinMaterial)
        .cornerRadius(geometry.size.width * 0.04)
    }
}

#Preview{
    ContentView()
        .environmentObject(User())
}

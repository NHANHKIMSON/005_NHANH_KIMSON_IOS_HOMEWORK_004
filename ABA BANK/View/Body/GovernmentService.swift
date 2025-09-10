//
//  GovernmentService.swift
//  ABA BANK
//
//  Created by Apple on 9/9/25.
//

class GovServices: Identifiable{
    var id: UUID = UUID()
    var serviceName: String
    var image: String
    init(serviceName: String, image: String) {
        self.serviceName = serviceName
        self.image = image
    }
    static var services = [
        GovServices(serviceName: "U&Me Spa and", image: "foreigner"),
        GovServices(serviceName: "Metfone Service", image: "general"),
        GovServices(serviceName: "VET Express", image: "NSSF"),
        GovServices(serviceName: "Cambolink21", image: "PPSHV"),
        GovServices(serviceName: "ComboTicket", image: "publicWork"),
    ]
}



import SwiftUI
struct GovernmentService: View {
    var services = GovServices.services
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



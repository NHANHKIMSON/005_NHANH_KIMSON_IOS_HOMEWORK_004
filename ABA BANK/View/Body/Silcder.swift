//
//  Silcder.swift
//  ABA BANK
//
//  Created by Apple on 9/6/25.
//
import SwiftUI
struct Slicder: View{
    var geomentry: GeometryProxy
    var images: [String] = ["ABA_Promote2", "ABA_Promote3", "ABA_promote_EON"]
    @State var selection: Int = 0
    let timer = Timer.publish(every: 3, on: .main, in: .common)
        .autoconnect()
    var body: some View{
        TabView(selection: $selection){
            ForEach(images.indices, id: \.self){ index in
                CustomImageContent(isFit: false, image: images[index])
                    .cornerRadius(geomentry.size.width * 0.04)
                    .padding(.horizontal)
            }
        }
        .onReceive(timer){ _ in
            withAnimation{
                selection = (selection + 1) %
                images.count
            }
            
        }
        .transition(.slide) // 3
        .frame(height: geomentry.size.height * 0.25)
        .frame(maxWidth: geomentry.size.width)
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .never))
    }
}
#Preview {
    ContentView()
        .environmentObject(User())
}

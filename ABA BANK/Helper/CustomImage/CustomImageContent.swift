//
//  ImageResizeableFill.swift
//  ABA BANK
//
//  Created by Apple on 9/5/25.
//

import SwiftUI

struct CustomImageContent: View {
    var isFit: Bool?
    var image: String?
    var size: CGFloat = 1
    var border: Color = .clear
    var body: some View{
        GeometryReader{ geomentry in
                Image(image ?? "")
                .resizable()
                .aspectRatio(contentMode: (isFit ?? false) ? .fit : .fill)
                .overlay{
                    if border != Color.clear {
                        RoundedRectangle(cornerRadius: border != Color.clear ? .infinity : 0)
                            .stroke(border, lineWidth: border != Color.clear ? 2 : 0)
                    }
                }
                .clipShape(RoundedRectangle(cornerRadius: border != Color.clear ? .infinity : 0))
        }
    }
}

#Preview{
    ContentView()
        .environmentObject(User())
}

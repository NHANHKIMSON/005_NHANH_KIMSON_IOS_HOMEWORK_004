//
//  Untitled.swift
//  ABA BANK
//
//  Created by Apple on 9/9/25.
//
import SwiftUI
struct QrCode: View {
    let image = generateQrCode(from: "HHWhda")
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing: 4) {
                Text("ប្រើ QR នេះ ដើម្បីទទួលប្រាក់មិត្តភក្តិ ឬ")
                    .multilineTextAlignment(.leading)

                HStack(alignment: .center, spacing: 9) {
                    Text("ផ្ទេរប្រាក់ពីធនាគារផ្សេងរបស់អ្នក")
                    Image(systemName: "info.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 26)
                        .foregroundStyle(.cyan)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            ZStack{
                Image("KHQR")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(59)
                VStack(alignment: .leading){
                    Text("Nhanh Kimson")
                        .textCase(.uppercase)
                    Text("$ 0.00")
                    QRCodeView(text: "00020101021129450016abaakhppxxx@abaa01090124671590208ABA Bank40390006abaP2P0112D0C02952294002090124671595204000053038405802KH5912NHANH KIMSON6010Phnom Penh630433A5")
                        .offset(y: 35)
                }
                .foregroundStyle(.black)
                .bold()
            }
            Button(action: {
                
            }, label: {
                HStack{
                    Image(systemName: "plus.circle.dashed")
                    Text("បញ្ជូលចំនួ​នទឹកប្រាក់")
                }
                .padding(.vertical)
                .frame(maxWidth: .infinity)
                .foregroundStyle(.cyan)
                .background(.ultraThinMaterial)
                .cornerRadius(9)
            })
            .buttonStyle(CustomButtonStyle())
            HStack(spacing: 42){
                CustomButtonInQrCode(action: {}, icon: "square.and.arrow.down", text: "ទាញយក")
                CustomButtonInQrCode(action: {}, icon: "dot.circle.viewfinder", text: "ថតអេក្រង់")
                CustomButtonInQrCode(action: {}, icon: "link", text: "ផ្ញើរលីង")
            }
            .padding(.top)
        }
        .frame(width: .infinity, height: .infinity)
        .padding(.horizontal, 60)
        .preferredColorScheme(.dark)
    }
}

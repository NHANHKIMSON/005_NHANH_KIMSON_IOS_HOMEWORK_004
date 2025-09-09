//
//  Untitled.swift
//  ABA BANK
//
//  Created by Apple on 9/9/25.
//
import SwiftUI
struct FullScreenCoverView: View {
    @Binding var showingScreenCover: Bool
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView {
            ZStack(alignment: .top){
                Color.black.ignoresSafeArea(.all)
                QrCode()
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal){
                            HStack{
                                Image("ABALogo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                Text("QR")
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button(action: {
                                dismiss()
                            }, label: {
                                Image(systemName: "xmark")
                                    .padding(4)
                                    .background(.ultraThinMaterial)
                                    .cornerRadius(.infinity)
                            })
                            .buttonStyle(CustomButtonStyle())
                        }
                    }
            }
        }
        
    }
}

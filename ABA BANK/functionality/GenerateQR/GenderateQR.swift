//
//  Untitled.swift
//  ABA BANK
//
//  Created by Apple on 9/9/25.
//

import SwiftUI
import CoreImage
import CoreImage.CIFilterBuiltins

func generateQrCode(from text: String) -> UIImage? {
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    let data = Data(text.utf8)
    filter.setValue(data, forKey: "inputMessage")
    filter.setValue("Q", forKey: "inputCorrectionLevel")
    
    let transform = CGAffineTransform(scaleX: 10, y: 10)
    
    if let output = filter.outputImage?.transformed(by: transform) {
        if let cgImage = context.createCGImage(output, from: output.extent) {
            return UIImage(cgImage: cgImage)
        }
    }
    return nil
}

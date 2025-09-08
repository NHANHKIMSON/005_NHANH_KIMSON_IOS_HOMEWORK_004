//
//  Custom.swift
//  ABA BANK
//
//  Created by Apple on 9/6/25.
//
import SwiftUI

func randomColor(from colors: [Color]) -> Color{
    return colors.randomElement() ?? Color.white
}

func getShortName(fullName: String) -> String{
    let part = fullName.split(separator: " ").map{ String($0) }   //  if we add this to this func ["Nhanh", "Kimson"]
    let firstName = part.first?.prefix(1).uppercased() ?? "" // return // N
    let lastName = part.last?.prefix(1).uppercased() ?? "" // return  K
    return firstName + lastName
}

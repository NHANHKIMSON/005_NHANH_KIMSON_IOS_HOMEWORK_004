//
//  Apearance.swift
//  ABA BANK
//
//  Created by Apple on 9/10/25.
//

import Foundation
import SwiftUICore
//class Theme: Identifiable{
//    static var counter = 0
//    var id = UUID()
//    var identify: Int
//    var image: String
//    var text: String
//    
//    init(){
//        self.identify = 1
//        self.image = ""
//        self.text = ""
//    }
//    init(image: String, text: String) {
//        Theme.counter += 1
//        self.identify = Theme.counter
//        self.image = image
//        self.text = text
//    }
//    static var themes = [
//        Theme(image: "Cute Pets", text: "Cute Pets"),
//        Theme(image: "AngkorWat", text: "AngkorWat"),
//        Theme(image: "Bayon", text: "Bayon"),
//        Theme(image: "BonTeaySrey", text: "Cute Pets"),
//        Theme(image: "Cute Pets", text: "Cute Pets"),
//        Theme(image: "Khmer Heritage", text: "Khmer Heritage"),
//        Theme(image: "Moon Night", text: "Moon Night"),
//        Theme(image: "Khmer Heritage", text: "Khmer Heritage"),
//        Theme(image: "Sunset", text: "Sunset"),
//        Theme(image: "Train", text: "Train"),
//    ]
//    
//    func findThemesByIDentify(iden: Int){
//        if iden ==
//    }
//}


struct Theme: Identifiable {
    static var counter = -1
    
    let id = UUID()
    let identify: Int
    var image: String
    var text: String
    
    init(image: String, text: String) {
        Theme.counter += 1
        self.identify = Theme.counter
        self.image = image
        self.text = text
    }
    static var themes: [Theme] = [
        Theme(image: "Cute Pets", text: "Cute Pets"),
        Theme(image: "AngkorWat", text: "AngkorWat"),
        Theme(image: "Bayon", text: "Bayon"),
        Theme(image: "BonTeaySrey", text: "BonTeaySrey"),
        Theme(image: "Khmer Heritage", text: "Khmer Heritage"),
        Theme(image: "Moon Night", text: "Moon Night"),
        Theme(image: "Sunset", text: "Sunset"),
        Theme(image: "Train", text: "Train")
    ]
    
    static func imageByIden(iden: Int) -> String{
        return Theme.themes[iden].image
    }
}




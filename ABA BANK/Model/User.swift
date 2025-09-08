//
//  User.swift
//  ABA BANK
//
//  Created by Apple on 9/5/25.
//

import Foundation
class User: Identifiable, ObservableObject{
    @Published var id: UUID = UUID()
    @Published var fullName: String
    @Published var profileImage: String
    init(fullName: String, profileImage: String) {
        self.fullName = fullName
        self.profileImage = profileImage
    }
    init(){
        fullName = "Nhanh Kimson"
        profileImage = "user"
    }
    static var users: [User] = [
        User(fullName: "Nhanh Kimson", profileImage: ""),
        User(fullName: "Pholin", profileImage: ""),
        User(fullName: "So Chetra", profileImage: ""),
        User(fullName: "Y Mengsea", profileImage: ""),
        User(fullName: "Sovannara", profileImage: "")
    ]
}

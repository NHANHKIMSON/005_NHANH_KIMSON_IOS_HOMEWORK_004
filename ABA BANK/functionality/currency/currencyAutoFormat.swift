//
//  currencyAutoFormat.swift
//  ABA BANK
//
//  Created by Apple on 9/5/25.
//

import SwiftUI
import Foundation
func currencyAutoFormat(amount: Double, currencyCode: String = "USD") -> String{
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.currencyCode = currencyCode
    return formatter.string(from: NSNumber(value: amount)) ?? "\(amount)"

}

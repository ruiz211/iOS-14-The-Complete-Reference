//
//  StringExtensions.swift
//  SwiftUI by Example
//
//  Created by José Ruiz on 3/11/21.
//

import Foundation

extension String {
    
     static func paymentAmount(total: Double, tip: Int ) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        let total = Double(total)
        let tipValue = total * Double(tip) / 100
        return formatter.string(from: NSNumber(value: total + tipValue)) ?? "$0"
    }
}

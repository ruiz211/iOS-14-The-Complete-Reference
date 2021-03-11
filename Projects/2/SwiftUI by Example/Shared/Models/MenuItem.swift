//
//  MenuItem.swift
//  SwiftUI by Example
//
//  Created by José Ruiz on 3/9/21.
//

import Foundation
import SwiftUI

struct MenuItem: Codable, Equatable, Identifiable {
    var id: UUID
    var name: String
    var photoCredit: String
    var price: Int
    var restrictions: [String]
    var description: String
    var mainImage: String {
        name.replacingOccurrences(of: " ", with: "-").lowercased()
    }
    var thumbnailImage: String {
        
        "\(mainImage)-thumb"
    }
    
    static let example = MenuItem(id: UUID(), name: "Fresh-baked Croissant", photoCredit: "Kavita Joshi Rai", price: 3, restrictions: ["D", "G"], description: "This is just a regular croissant that we buy in bulk from a frozen foods supermarket, but we needed some sort of adjective to justify our price. So, it was either \"fresh-baked\" or \"authentic Parisian\", and our legal team thinks the latter is probably going to land us in hot water.")
}

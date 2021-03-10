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
}

//
//  MenuSection.swift
//  SwiftUI by Example
//
//  Created by José Ruiz on 3/9/21.
//

import Foundation
import SwiftUI

struct MenuSection: Codable, Identifiable {
    var id: UUID
    var name: String
    var items: [MenuItem]
}

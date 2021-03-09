//
//  Order.swift
//  SwiftUI by Example
//
//  Created by José Ruiz on 3/9/21.
//

import Foundation
import SwiftUI

class Order {
    var items: [MenuItem] = [MenuItem]()
    var total: Int {
        if items.count > 0  {
            return items.reduce(0) {
                $0 + $1.price
            }
        } else { return 0 }
    }
    
    func add(item: MenuItem) -> Void {
        items.append(item)
    }
    
    func remove(item: MenuItem) -> Void {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
}

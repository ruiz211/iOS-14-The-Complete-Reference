//
//  JSONDecoderExtension.swift
//  SwiftUI by Example
//
//  Created by José Ruiz on 3/9/21.
//

import Foundation
import UIKit

extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("fail lo locate \(file) in bundle")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("fail lo read data \(file) in bundle")
        }
        let decoder = JSONDecoder()
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("fail lo decode \(file) in bundle")
        }
        return loaded
    }
}

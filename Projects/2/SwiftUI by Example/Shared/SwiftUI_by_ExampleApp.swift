//
//  SwiftUI_by_ExampleApp.swift
//  Shared
//
//  Created by José Ruiz on 3/9/21.
//

import SwiftUI

@main
struct SwiftUI_by_ExampleApp: App {
    @StateObject var order: Order = Order()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(order)
        }
    }
}

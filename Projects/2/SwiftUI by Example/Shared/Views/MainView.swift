//
//  MainView.swift
//  SwiftUI by Example
//
//  Created by José Ruiz on 3/11/21.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            ContentView().tabItem { Label("Menu", systemImage: "list.dash") }
            OrderView().tabItem { Label("Order", systemImage: "square.and.pencil") }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(Order())
    }
}

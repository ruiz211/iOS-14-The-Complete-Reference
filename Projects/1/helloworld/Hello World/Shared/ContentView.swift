//
//  ContentView.swift
//  Shared
//
//  Created by José Ruiz on 3/8/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView().tabItem{
                selection == 0 ? Image(systemName: "house.fill") : Image(systemName: "house")
                Text("Home")
            }.tag(0)
            SearchView().tabItem{
                selection == 1 ? Image(systemName: "doc.text.magnifyingglass") : Image(systemName: "magnifyingglass")
                Text("Home")
            }.tag(1)
            BagView().tabItem {
                selection == 2 ? Image(systemName: "bag.fill") : Image(systemName: "bag")
                Text("Bag")
            }.tag(2)
//            .onLongPressGesture {
//                Menu("Editing") {
//                    Button("Set In Point") {  }
//                    Button("Set Out Point") {  }
//                }
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

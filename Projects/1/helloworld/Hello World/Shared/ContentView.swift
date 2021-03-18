//
//  ContentView.swift
//  Shared
//
//  Created by José Ruiz on 3/8/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Menu("Actions") {
            Button("Duplicate") {}
            Button("Rename") {}
            Button("Delete…") {}
            Menu("Copy") {
                Button("Copy") {}
                Button("Copy Formatted") {}
                Button("Copy Library Path") {}
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


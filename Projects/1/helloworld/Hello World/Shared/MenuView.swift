//
//  MenuView.swift
//  Hello World
//
//  Created by José Ruiz on 3/22/21.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        Menu("Editing") {
            Button("Set In Point") {  }
            Button("Set Out Point") {  }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

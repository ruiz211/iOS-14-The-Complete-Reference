//
//  ItemDetailView.swift
//  SwiftUI by Example
//
//  Created by José Ruiz on 3/17/21.
//

import SwiftUI

struct ItemDetailView: View {
    @EnvironmentObject var order: Order
    
    let item: MenuItem
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage).resizable().scaledToFit()
                Text(item.photoCredit).padding(7).background(Color.black).foregroundColor(.white).font(.caption).offset(x: -7.0, y: -7.0)
            }
            Text(item.description).padding(11)
            Button("Add to order") {
                order.add(item: item)
            }.padding()
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(item: MenuItem.example).environmentObject(Order())
    }
}

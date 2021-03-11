//
//  ItemDetailView.swift
//  SwiftUI by Example
//
//  Created by José Ruiz on 3/10/21.
//

import SwiftUI

struct ItemDetailView: View {
    @EnvironmentObject var order: Order
    
    let item: MenuItem
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing){
                Image(item.mainImage).resizable().scaledToFit()
                Text(item.photoCredit).padding(5).background(Color.black).font(.caption).foregroundColor(.white).offset(x: -7, y: -7)
            }
            Text(item.description).navigationTitle(item.name).padding()
                
            Button("Order here") {
                order.add(item: item)
            }.font(.headline).padding()
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(item: MenuItem.example).environmentObject(Order())
    }
}

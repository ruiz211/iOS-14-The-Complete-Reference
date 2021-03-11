//
//  ItemDetailView.swift
//  SwiftUI by Example
//
//  Created by José Ruiz on 3/11/21.
//

import SwiftUI

struct ItemDetailView: View {
    @EnvironmentObject var order: Order
    
    let item: MenuItem
    
    var body: some View {
        //        NavigationView {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage).resizable().scaledToFit().padding(7)
                Text(item.photoCredit).padding(5).background(Color.black).font(.caption).foregroundColor(.white).offset(x: -11, y: -11)
            }
            Text(item.description).padding()
            Button("Order this product") {
                order.add(item: item)
            }.padding()
            
            Spacer()
        }
        .navigationTitle(Text(item.name))
        .navigationBarTitleDisplayMode(.inline)
    }
    //    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(item: MenuItem.example).environmentObject(Order())
    }
}

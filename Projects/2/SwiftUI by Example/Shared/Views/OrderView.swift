//
//  OrderView.swift
//  SwiftUI by Example
//
//  Created by José Ruiz on 3/17/21.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }.onDelete(perform: deleteItems)
                }
                Section(header: Text("$\(order.total)")) {
                    NavigationLink(destination: CheckoutView()) {
                        Text("Place order")
                    }
                }.disabled(order.items.isEmpty)
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Bag")
        }
    }
    
    func deleteItems(at offsets: IndexSet) -> Void {
        order.items.remove(atOffsets: offsets)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView().environmentObject(Order())
    }
}

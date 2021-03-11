//
//  OrderView.swift
//  SwiftUI by Example
//
//  Created by José Ruiz on 3/11/21.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var title: String {
        return order.items.count > 1 ? "Orders" : "Order"
    }
    
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("\(item.price)")
                        }
                    }.onDelete(perform: deleteItems)
                }
                Section {
                    HStack {
                        NavigationLink(destination: CheckoutView()) {
                            Text("Place order")
                            Spacer()
                            Text("$\(order.total)")
                        }
                    }
                }.disabled(order.items.isEmpty)
            }
            .listStyle(InsetGroupedListStyle())
            .toolbar(content: {
                EditButton()
            })
            
            .navigationTitle(title)
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

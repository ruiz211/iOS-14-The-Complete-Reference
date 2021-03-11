//
//  OrderView.swift
//  SwiftUI by Example
//
//  Created by José Ruiz on 3/10/21.
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
                            Text("\(item.price)")
                            
                        }
                    }
                }
                Section {
                    NavigationLink(destination: Text("Checkout")) {
                        HStack {
                            Text("Place order")
                            Spacer()
                            Text("$\(order.total)")
                        }
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
            
            .navigationTitle("Order")
        }
    }
    
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView().environmentObject(Order())
    }
}

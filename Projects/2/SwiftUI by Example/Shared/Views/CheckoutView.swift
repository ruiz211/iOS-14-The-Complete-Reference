//
//  CheckoutView.swift
//  SwiftUI by Example
//
//  Created by José Ruiz on 3/11/21.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order
    
    let payments:[String] = ["Cash", "Credit Card", "iDine Points"]
    @State private var payment: String = "Cash"
    
    var body: some View {
        NavigationView {
            VStack {
                Section {
                    Picker("How do you want to pay?", selection: $payment) {
                        ForEach(payments, id: \.self) { p in
                            Text(p)
                        }
                    }
                }
            }
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView().environmentObject(Order())
    }
}

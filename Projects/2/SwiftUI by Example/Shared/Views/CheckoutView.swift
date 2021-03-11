//
//  CheckoutView.swift
//  SwiftUI by Example
//
//  Created by José Ruiz on 3/10/21.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order
    
    @State private var paymentType: String = "Cash"
    
    let paymentTypes: [String] = ["Cash", "Credit Card", "iDine Point"]
    
    var body: some View {
        NavigationView {
            VStack {
                Section {
                    Picker("How do you want to pay?", selection: $paymentType) {
                        ForEach(paymentTypes, id: \.self) { pt in
                            Text(pt)
                        }
                    }
                }
            }
            .navigationTitle("Checkout").navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView().environmentObject(Order())
    }
}

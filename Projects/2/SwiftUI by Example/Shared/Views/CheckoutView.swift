//
//  CheckoutView.swift
//  SwiftUI by Example
//
//  Created by José Ruiz on 3/17/21.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order
    
    @State private var payment: String = "Cash"
    @State private var amount: String = "0"
    @State private var tip: Int = 2
    
    let payments: [String] = ["Cash", "Credit Card"]
    let tips: [Int] = [0, 2, 3, 5, 7, 11, 13, 17]
    
    var body: some View {
        Form {
            Section(header: Text("Payment Method")) {
                Picker("Select a payment method", selection: $payment) {
                    ForEach(payments, id: \.self) {
                        Text($0)
                    }
                    
                }.pickerStyle(SegmentedPickerStyle())
                
                if payment == "Cash" {
                    TextField("Amount", text: $amount)
                } else {
                    Text("Card...")
                    Button("Add") {
                        //
                    }
                }
            }
            Section(header: Text("Tip")) {
                Picker("Tip", selection: $tip) {
                    ForEach(tips, id: \.self) {
                        Text("\($0)")
                    }
                }
            }.pickerStyle(SegmentedPickerStyle())
            
            Section(header: Text("Amount: \(String.paymentAmount(total: Double(order.total), tip: tip))")) {
                Text((String.paymentAmount(total: Double(order.total), tip: tip)))
            }
            
            .navigationTitle("Checkout")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView().environmentObject(Order())
    }
}

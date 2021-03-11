//
//  CheckoutView.swift
//  SwiftUI by Example
//
//  Created by José Ruiz on 3/11/21.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order
    
    @State private var payment: String = "Cash"
    @State private var addLoyaltyDetails: Bool = false
    @State private var loyaltyNumber = ""
    @State private var tip: Int = 5
    @State private var showConfirmationAlert = false
    
    let payments: [String] = ["Cash", "Credit Card", "iDine Points"]
    let tips: [Int] = [0, 2, 3, 5, 7, 11 ,13]
    
    
    var totalAmount: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
        let total = Double(order.total)
        let tipValue = total * Double(tip) / 100

        return formatter.string(from: NSNumber(value: total + tipValue)) ?? "$0"
    }
    
    
    var body: some View {
        Form {
            Section {
                Picker("How do you want to pay?", selection: $payment.animation()) {
                    ForEach(payments, id: \.self) {
                        Text($0)
                    }
                }
                Toggle("Add iDine loyalty card", isOn: $addLoyaltyDetails.animation())
                if addLoyaltyDetails {
                    TextField("Enter your iDine ID", text: $loyaltyNumber)
                }
            }
            
            Section(header: Text("do you want to leave a tip?")) {
                Picker("Percentage: ", selection: $tip) {
                    ForEach(tips, id: \.self) {
                        Text("\($0)%")
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
            
            Section(header: Text("Total: \(totalAmount)")) {
                Button("Confirm order") {
                    showConfirmationAlert.toggle()
                }
            }
        }
        .navigationTitle("Checkout").navigationBarTitleDisplayMode(.inline)
        .alert(isPresented: $showConfirmationAlert) {
            Alert(title: Text("Order confirmed"), message: Text("Your total was: \(totalAmount)"), dismissButton: .default(Text("Done")))
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView().environmentObject(Order())
    }
}

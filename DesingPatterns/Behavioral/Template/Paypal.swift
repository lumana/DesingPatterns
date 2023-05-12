//
//  Paypal.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 12/5/23.
//

import Foundation

class Paypal: PaymentTemplate{
    func initialize() {
        print("Initialize Paypal payment")
    }
    
    func startPayment() {
        print("Doing Paypal payment")
    }
    
    func endPayment() {
        print("End Paypal payment")
    }
}

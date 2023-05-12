//
//  Visa.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 12/5/23.
//

import Foundation

class Visa: PaymentTemplate{
    func initialize() {
        print("Initialize Visa payment")
    }
    
    func startPayment() {
        print("Doing Visa payment")
    }
    
    func endPayment() {
        print("End Visa payment")
    }
}

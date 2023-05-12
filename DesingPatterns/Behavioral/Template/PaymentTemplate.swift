//
//  PaymentTemplate.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 12/5/23.
//

import Foundation

protocol PaymentTemplate {
    func initialize()
    func startPayment()
    func endPayment()
}

extension PaymentTemplate{
    func makePayment(){
        initialize()
        startPayment()
        endPayment()
    }
}

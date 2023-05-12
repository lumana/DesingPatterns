//
//  PaymentMethodClient.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 8/5/23.
//

import Foundation

class PaymentMethodClient {
    static func codigoCliente(factory: AbstractFactory){
        let payment = factory.createPayment()
        let method = factory.createMethod()
        
        payment.doPayment()
        method.calcultePayment()
    }
}

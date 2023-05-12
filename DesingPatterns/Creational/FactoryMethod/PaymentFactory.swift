//
//  PaymentFactory.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 8/5/23.
//

import Foundation

class PaymentFactory {
    static func buildPayment(typePayment: TypePayment) -> Payment{
        switch typePayment{
        case .GOOGLE:
            return GooglePayment()
        case .CARD:
            return CardPayment()
        case .APPLE:
            return ApplePayment()
        }
    }
}

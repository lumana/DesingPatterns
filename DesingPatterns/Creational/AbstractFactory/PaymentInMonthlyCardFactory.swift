//
//  PaymentInMonthlyFactory.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 8/5/23.
//

import Foundation

class PaymentInMonthlyCardFactory : AbstractFactory {
    func createPayment() -> PaymentAF {
        return CardPaymentAF()
    }
    
    func createMethod() -> PaymentMethod {
        return MonthlyMethod()
    }
    
    
}

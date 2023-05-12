//
//  PaymentInWeeklyGoogleFactory.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 8/5/23.
//

import Foundation

class PaymentInWeeklyGoogleFactory : AbstractFactory {
    func createPayment() -> PaymentAF {
        return GooglePaymentAF()
    }
    
    func createMethod() -> PaymentMethod {
        return WeeklyMethod()
    }
    
    
}

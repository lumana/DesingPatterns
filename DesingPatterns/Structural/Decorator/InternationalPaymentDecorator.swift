//
//  InternationalPaymentDecorator.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 12/5/23.
//

import Foundation

class InternationalPaymentDecorator: CreditDecorator {
    
    override init(decorated: CreditComponent) {
        super.init(decorated: decorated)
    }
    
    override func showCredit() {
        decorated.showCredit()
        configInternationalPayment()
    }
    
    func configInternationalPayment() {
        print("International card configuration")
    }
}

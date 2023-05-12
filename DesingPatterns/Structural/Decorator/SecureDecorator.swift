//
//  SecureDecorator.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 12/5/23.
//

import Foundation

class SecureDecorator: CreditDecorator {
    
    override init(decorated: CreditComponent) {
        super.init(decorated: decorated)
    }
    
    override func showCredit() {
        decorated.showCredit()
        configSecurePayment()
    }
    
    func configSecurePayment() {
        print("Secure card configuration")
    }
}

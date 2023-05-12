//
//  CreditDecorator.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 12/5/23.
//

import Foundation

class CreditDecorator: CreditComponent {
   
    var decorated: CreditComponent
    
    init(decorated: CreditComponent){
        self.decorated = decorated
    }
    
    func showCredit() {
        self.decorated.showCredit()
    }
}

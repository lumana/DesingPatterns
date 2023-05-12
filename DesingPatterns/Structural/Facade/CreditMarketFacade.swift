//
//  CreditMarketFacade.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 12/5/23.
//

import Foundation

class CreditMarketFacade {
    var black = BlackModule()
    var gold = GoldModule()
    var silver = SilverModule()
    
    func showCreditBlack() {
        black.showCredit()
    }
    
    func showCreditGold() {
        gold.showCredit()
    }
    
    func showCreditSilver() {
        silver.showCredit()
    }
}

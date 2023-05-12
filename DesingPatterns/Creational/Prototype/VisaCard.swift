//
//  VisaCard.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 8/5/23.
//

import Foundation

class VisaCard: PrototypeCard{
    
    var cardName = "VISA"
    
    func copy() -> Any{
        return copy(with: nil)
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        guard let prototype = super.copy(with: zone) as? VisaCard else {
            return VisaCard()
        }
        prototype.cardName = cardName
        print("Tarjeta VISA clonada")
        return prototype
    }
}

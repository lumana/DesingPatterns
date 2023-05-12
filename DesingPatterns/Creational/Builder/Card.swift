//
//  Card.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 8/5/23.
//

import Foundation

class Card {
    private var carType: String = ""
    private var number: String = ""
    private var expired: Int = 0
    
    func showCard(){
        print("Tarjeta \(carType) - \(number) - \(expired)")
    }
    
    class CardBuilder {
        private var innerCard = Card()
        
        func carType(cardType: String) -> CardBuilder{
            innerCard.carType = cardType
            return self
        }
        
        func number(number: String) -> CardBuilder{
            innerCard.number = number
            return self
        }
        
        func expired(expired: Int) -> CardBuilder{
            innerCard.expired = expired
            return self
        }
        
        func build()->Card{
            return innerCard
        }
    }
    
}

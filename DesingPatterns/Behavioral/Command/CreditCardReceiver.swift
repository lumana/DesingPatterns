//
//  CreditCardReceiver.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 12/5/23.
//

import Foundation

class CreditCardReceiver {
    
    func sendPinNumberToCustomer(){
        print("The pin was sended to the client")
    }
    
    func sendSmsToCustomerActive(){
        print("SMS Sended. Card activated")
    }
    
    func active(){
        print("The card has been activated")
    }
    
    func desactivate(){
        print("The card has been desactivated")
    }
    
    func sendSmsToCustomerDesactivate(){
        print("SMS Sended. Card desactivated")
    }
    
}

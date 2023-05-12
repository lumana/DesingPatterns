//
//  CreditCardActivateCommand.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 12/5/23.
//

import Foundation

class CredicCardActiveCommand: Command {
    
    var crediCardReceiver: CreditCardReceiver
    
    init(crediCardReceiver: CreditCardReceiver) {
        self.crediCardReceiver = crediCardReceiver
    }
    
    func execute() {
        crediCardReceiver.sendPinNumberToCustomer()
        crediCardReceiver.active()
        crediCardReceiver.sendSmsToCustomerActive()
    }
}

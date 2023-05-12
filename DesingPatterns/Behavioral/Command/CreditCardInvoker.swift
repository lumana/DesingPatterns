//
//  CreditCardInvoker.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 12/5/23.
//

import Foundation

class CreditCardInvoker {
    private var command: Command?
    
    func setCommand(command: Command){
        self.command = command
    }
    
    func run(){
        command?.execute()
    }
}

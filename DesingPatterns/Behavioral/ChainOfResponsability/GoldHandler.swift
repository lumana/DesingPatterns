//
//  GoldHandler.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 12/5/23.
//

import Foundation

class GoldHandler : ApprovedLoanHandler {
    
    private var next: ApprovedLoanHandler?
    
    func setNext(handler: ApprovedLoanHandler) {
        next = handler
    }
    
    func getNext() -> ApprovedLoanHandler {
        return next!
    }
    
    func creditCardRequest(totalLoan: Int) {
        if(totalLoan <= 10000){
            print("This request is handle by GoldHandler")
        }else{
            next!.creditCardRequest(totalLoan: totalLoan)
        }
    }
}

//
//  ApprovedLoanHandler.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 12/5/23.
//

import Foundation

protocol ApprovedLoanHandler {
    func setNext(handler: ApprovedLoanHandler)
    func getNext()->ApprovedLoanHandler
    func creditCardRequest(totalLoan: Int)
}

//
//  AbstractFactory.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 8/5/23.
//

import Foundation

protocol AbstractFactory {
    func createPayment() -> PaymentAF
    func createMethod() -> PaymentMethod
}

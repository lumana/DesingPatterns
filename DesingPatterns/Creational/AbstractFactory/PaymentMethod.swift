//
//  PaymentMethod.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 8/5/23.
//

import Foundation

protocol PaymentMethod {
    func calcultePayment() -> Array<Double>?
}

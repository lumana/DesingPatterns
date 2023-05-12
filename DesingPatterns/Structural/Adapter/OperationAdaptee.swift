//
//  OperationAdaptee.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 12/5/23.
//

import Foundation

class OperationAdaptee{
    var a: Int
    var b: Int
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    
    func sum()->Int {
        return a+b
    }
}

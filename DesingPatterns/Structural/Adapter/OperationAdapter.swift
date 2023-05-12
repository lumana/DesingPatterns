//
//  OperationAdapter.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 12/5/23.
//

import Foundation

class OperationAdapter: OperationTarget {
    
    let adaptee: OperationAdaptee
    
    init(adaptee: OperationAdaptee) {
        self.adaptee = adaptee
    }
    
    var getSum: String{
        return String(self.adaptee.sum())
    }
    
    
}

//
//  CardSingleton.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 9/5/23.
//

import Foundation

class CardSingleton {
    static var shared = CardSingleton()
    
    private init(){}
    
    func doSomething(){
        print("Singleton working")
    }
    
}

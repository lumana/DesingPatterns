//
//  Car.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 12/5/23.
//

import Foundation

class Car: Observer {
    
    func update(trafficLight: TrafficLight) {
        if(trafficLight.status as AnyObject === "CAR_RED" as AnyObject){
            print("Red traffic light -> Stop car")
        }else{
            print("Green traffic light -> Move car")
        }
    }
}

//
//  Pedestrian.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 12/5/23.
//

import Foundation

class Pedestrian: Observer {
    func update(trafficLight: TrafficLight) {
        if(trafficLight.status as AnyObject === "CAR_RED" as AnyObject){
            print("Green person light -> Cross the road")
        }else{
            print("Red person light -> Wait")
        }
    }
    
    
}

//
//  Subject.swift
//  DesingPatterns
//
//  Created by Luis Alejandro Umana Salas on 12/5/23.
//

import Foundation

protocol Subject {
    func attach(o: Observer)
    func detacht(o: Observer)
    func notifyUpdate(trafficLight: TrafficLight)
}

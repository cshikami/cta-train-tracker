//
//  Trains.swift
//  ShikamiC_Assignment2
//
//  Created by Christopher Shikami on 5/11/17.
//  Copyright © 2017 Chris. All rights reserved.
//

import Foundation

let trains = [
    Trains(name: "Red Line",
           image: "redline"),
    
    Trains(name: "Blue Line",
           image: "blueline"),
    
    Trains(name: "Brown Line",
           image: "brownline"),
    
    Trains(name: "Green Line",
           image: "greenline"),
    
    Trains(name: "Orange Line",
           image: "orangeline"),
    
    Trains(name: "Purple Line",
           image: "purpleline"),
    
    Trains(name: "Pink Line",
           image: "pinkline"),
    
    Trains(name: "Yellow Line",
           image: "yellowline")
]

class Trains {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}

//
//  Orangeline.swift
//  ShikamiC_Assignment2
//
//  Created by Christopher Shikami on 5/22/17.
//  Copyright © 2017 Chris. All rights reserved.
//

import Foundation

let orangelinestations = [
    
    Orangeline(name: "Midway",
               image: "orangeline"),
    Orangeline(name: "Pulaski",
               image: "orangeline"),
    Orangeline(name: "Kedzie",
               image: "orangeline"),
    Orangeline(name: "Western",
               image: "orangeline"),
    Orangeline(name: "35th/Archer",
               image: "orangeline"),
    Orangeline(name: "Ashland",
               image: "orangeline"),
    Orangeline(name: "Halsted",
               image: "orangeline"),
    Orangeline(name: "Roosevelt",
               image: "orangeline"),
    Orangeline(name: "Harold Washington Library-State/Van Buren",
               image: "orangeline"),
    Orangeline(name: "LaSalle/Van Buren",
               image: "orangeline"),
    Orangeline(name: "Quincy",
               image: "orangeline"),
    Orangeline(name: "Washington/Wells",
               image: "orangeline"),
    Orangeline(name: "Clark/Lake",
               image: "orangeline"),
    Orangeline(name: "State/Lake",
               image: "orangeline"),
    Orangeline(name: "Randolph/Wabash",
               image: "orangeline"),
    Orangeline(name: "Adams/Wabash",
               image: "orangeline"),
]

class Orangeline {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }

}

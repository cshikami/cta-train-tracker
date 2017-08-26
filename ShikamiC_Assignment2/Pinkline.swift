//
//  Pinkline.swift
//  ShikamiC_Assignment2
//
//  Created by Christopher Shikami on 5/22/17.
//  Copyright © 2017 Chris. All rights reserved.
//

import Foundation

let pinklinestations = [
    
    Pinkline(name: "54th/Cermak",
             image: "pinkline"),
    Pinkline(name: "Cicero",
             image: "pinkline"),
    Pinkline(name: "Kostner",
             image: "pinkline"),
    Pinkline(name: "Pulaski",
             image: "pinkline"),
    Pinkline(name: "Central Park",
             image: "pinkline"),
    Pinkline(name: "Kedzie",
             image: "pinkline"),
    Pinkline(name: "California",
             image: "pinkline"),
    Pinkline(name: "Western",
             image: "pinkline"),
    Pinkline(name: "Damen",
             image: "pinkline"),
    Pinkline(name: "18th",
             image: "pinkline"),
    Pinkline(name: "Polk",
             image: "pinkline"),
    Pinkline(name: "Ashland",
             image: "pinkline"),
    Pinkline(name: "Morgan",
             image: "pinkline"),
    Pinkline(name: "Clinton",
             image: "pinkline"),
    Pinkline(name: "Clark/Lake",
             image: "pinkline"),
    Pinkline(name: "State/Lake",
             image: "pinkline"),
    Pinkline(name: "Randolph/Wabash",
             image: "pinkline"),
    Pinkline(name: "Adams/Wabash",
             image: "pinkline"),
    Pinkline(name: "Harold Washington Library-State/Van Buren",
             image: "pinkline"),
    Pinkline(name: "LaSalle/Van Buren",
             image: "pinkline"),
    Pinkline(name: "Quincy",
             image: "pinkline"),
    Pinkline(name: "Washington/Wells",
             image: "pinkline"),
]

class Pinkline {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}

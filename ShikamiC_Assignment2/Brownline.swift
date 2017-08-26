//
//  Brownline.swift
//  ShikamiC_Assignment2
//
//  Created by Christopher Shikami on 5/22/17.
//  Copyright © 2017 Chris. All rights reserved.
//

import Foundation

let brownlinestations = [
    
    Brownline(name: "Kimball",
              image: "brownline"),
    Brownline(name: "Kedzie",
              image: "brownline"),
    Brownline(name: "Francisco",
              image: "brownline"),
    Brownline(name: "Rockwell",
              image: "brownline"),
    Brownline(name: "Western",
              image: "brownline"),
    Brownline(name: "Damen",
              image: "brownline"),
    Brownline(name: "Montrose",
              image: "brownline"),
    Brownline(name: "Irving Park",
              image: "brownline"),
    Brownline(name: "Addison",
              image: "brownline"),
    Brownline(name: "Paulina",
              image: "brownline"),
    Brownline(name: "Southport",
              image: "brownline"),
    Brownline(name: "Belmont",
              image: "brownline"),
    Brownline(name: "Wellington",
              image: "brownline"),
    Brownline(name: "Diversey",
              image: "brownline"),
    Brownline(name: "Fullerton",
              image: "brownline"),
    Brownline(name: "Armitage",
              image: "brownline"),
    Brownline(name: "Sedgwick",
              image: "brownline"),
    Brownline(name: "Chicago",
              image: "brownline"),
    Brownline(name: "Merchandise Mart",
              image: "brownline"),
    Brownline(name: "Washington/Wells",
              image: "brownline"),
    Brownline(name: "Quincy",
              image: "brownline"),
    Brownline(name: "LaSalle/Van Buren",
              image: "brownline"),
    Brownline(name: "Harold Washington Library-State/Van Buren",
              image: "brownline"),
    Brownline(name: "Adams/Wabash",
              image: "brownline"),
    Brownline(name: "Randolph/Wabash",
              image: "brownline"),
    Brownline(name: "State/Lake",
              image: "brownline"),
    Brownline(name: "Clark/Lake",
              image: "brownline"),
]

class Brownline {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}

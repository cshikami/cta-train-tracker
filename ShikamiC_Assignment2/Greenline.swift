//
//  Greenline.swift
//  ShikamiC_Assignment2
//
//  Created by Christopher Shikami on 5/22/17.
//  Copyright © 2017 Chris. All rights reserved.
//

import Foundation

let greenlinestations = [
    
    Greenline(name: "Harlem/Lake",
              image: "greenline"),
    Greenline(name: "Oak Park",
              image: "greenline"),
    Greenline(name: "Ridgeland",
              image: "greenline"),
    Greenline(name: "Austin",
              image: "greenline"),
    Greenline(name: "Central",
              image: "greenline"),
    Greenline(name: "Laramie",
              image: "greenline"),
    Greenline(name: "Cicero",
              image: "greenline"),
    Greenline(name: "Pulaski",
              image: "greenline"),
    Greenline(name: "Conservatory-Central Park Drive",
              image: "greenline"),
    Greenline(name: "Kedzie",
              image: "greenline"),
    Greenline(name: "California",
              image: "greenline"),
    Greenline(name: "Ashland",
              image: "greenline"),
    Greenline(name: "Morgan",
              image: "greenline"),
    Greenline(name: "Clinton",
              image: "greenline"),
    Greenline(name: "Clark/Lake",
              image: "greenline"),
    Greenline(name: "State/Lake",
              image: "greenline"),
    Greenline(name: "Randolph/Wabash",
              image: "greenline"),
    Greenline(name: "Adams/Wabash",
              image: "greenline"),
    Greenline(name: "Roosevelt",
              image: "greenline"),
    Greenline(name: "Cermak-McCormick Place",
              image: "greenline"),
    Greenline(name: "35th-Bronzeville-IIT",
              image: "greenline"),
    Greenline(name: "Indiana",
              image: "greenline"),
    Greenline(name: "43rd",
              image: "greenline"),
    Greenline(name: "47th",
              image: "greenline"),
    Greenline(name: "51st",
              image: "greenline"),
    Greenline(name: "Garfield",
              image: "greenline"),
    Greenline(name: "King Drive",
              image: "greenline"),
    Greenline(name: "Cottage Grove",
              image: "greenline"),
    Greenline(name: "Halsted",
              image: "greenline"),
    Greenline(name: "Ashland/63rd",
              image: "greenline"),
]

class Greenline {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}

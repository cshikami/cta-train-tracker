//
//  Yellowline.swift
//  ShikamiC_Assignment2
//
//  Created by Christopher Shikami on 5/22/17.
//  Copyright © 2017 Chris. All rights reserved.
//

import Foundation

let yellowlinestations = [
    Yellowline(name: "Dempster-Skokie",
               image: "yellowline"),
    Yellowline(name: "Oakton-Skokie",
               image: "yellowline"),
    Yellowline(name: "Howard",
               image: "yellowline"),
]

class Yellowline {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}

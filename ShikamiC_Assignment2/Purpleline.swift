//
//  Purpleline.swift
//  ShikamiC_Assignment2
//
//  Created by Christopher Shikami on 5/22/17.
//  Copyright © 2017 Chris. All rights reserved.
//

import Foundation

let purplelinestations = [
    
    Purpleline(name: "Linden",
               image: "purpleline"),
    Purpleline(name: "Central",
               image: "purpleline"),
    Purpleline(name: "Noyes",
               image: "purpleline"),
    Purpleline(name: "Foster",
               image: "purpleline"),
    Purpleline(name: "Davis",
               image: "purpleline"),
    Purpleline(name: "Dempster",
               image: "purpleline"),
    Purpleline(name: "Main",
               image: "purpleline"),
    Purpleline(name: "South Blvd",
               image: "purpleline"),
    Purpleline(name: "Howard",
               image: "purpleline"),
    Purpleline(name: "Wilson",
               image: "purpleline"),
    Purpleline(name: "Sheridan",
               image: "purpleline"),
    Purpleline(name: "Belmont",
               image: "purpleline"),
    Purpleline(name: "Wellington",
               image: "purpleline"),
    Purpleline(name: "Diversey",
               image: "purpleline"),
    Purpleline(name: "Fullerton",
               image: "purpleline"),
    Purpleline(name: "Armitage",
               image: "purpleline"),
    Purpleline(name: "Sedgwick",
               image: "purpleline"),
    Purpleline(name: "Chicago",
               image: "purpleline"),
    Purpleline(name: "Merchandise Mart",
               image: "purpleline"),
    Purpleline(name: "Clark/Lake",
               image: "purpleline"),
    Purpleline(name: "State/Lake",
               image: "purpleline"),
    Purpleline(name: "Randolph/Wabash",
               image: "purpleline"),
    Purpleline(name: "Adams/Wabash",
               image: "purpleline"),
    Purpleline(name: "Harold Washington Library-State/Van Buren",
               image: "purpleline"),
    Purpleline(name: "LaSalle/Van Buren",
               image: "purpleline"),
    Purpleline(name: "Quincy",
               image: "purpleline"),
    Purpleline(name: "Washington/Wells",
               image: "purpleline"),
]

class Purpleline {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}

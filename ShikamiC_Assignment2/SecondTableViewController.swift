//
//  SecondTableView.swift
//  ShikamiC_Assignment2
//
//  Created by Christopher Shikami on 5/12/17.
//  Copyright © 2017 Chris. All rights reserved.
//

import Foundation
import UIKit

class SecondTableViewController: UITableViewController {
    
    var SecondArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int
    {
        return SecondArray.count
        }
        
    override func tableView(_: <#T##tableView: UITableView##UITableView#>, cellForRowAt: <#T##IndexPath#>)
        
    }
}

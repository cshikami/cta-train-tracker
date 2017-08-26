//
//  YellowLineTableViewController.swift
//  ShikamiC_Assignment2
//
//  Created by Christopher Shikami on 5/22/17.
//  Copyright © 2017 Chris. All rights reserved.
//

import UIKit

class YellowLineTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yellowlinestations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "yellowlinecell", for: indexPath)
        
        let station = yellowlinestations[indexPath.row]
        
        cell.textLabel?.text = station.name
        cell.imageView?.image = UIImage(named: station.image)
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! DestinationTableViewController
        
        if let indexPath = self.tableView.indexPathForSelectedRow{
            switch indexPath.row {
            case 0:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40140&outputType=JSON" //Dempster-Skokie
                print("case 0")
                print(vc.feed)
            case 1:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41680&outputType=JSON" //Oakton-Skokie
                print("case 1")
                print(vc.feed)
            default:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40900&outputType=JSON" //Howard
                print("default")
                print(vc.feed)
            }
        }
    }
}

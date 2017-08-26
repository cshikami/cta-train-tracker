//
//  OrangeLineTableViewController.swift
//  ShikamiC_Assignment2
//
//  Created by Christopher Shikami on 5/22/17.
//  Copyright © 2017 Chris. All rights reserved.
//

import UIKit

class OrangeLineTableViewController: UITableViewController {
    
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
        return orangelinestations.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "orangelinecell", for: indexPath)
        
        let station = orangelinestations[indexPath.row]
        
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
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40930&outputType=JSON" //Midway
                print("case 0")
                print(vc.feed)
            case 1:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40960&outputType=JSON" //Pulaski
                print("case 1")
                print(vc.feed)
            case 2:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41150&outputType=JSON" //Kedzie
                print("case 2")
                print(vc.feed)
            case 3:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40310&outputType=JSON" //Western
                print("case 3")
                print(vc.feed)
            case 4:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40120&outputType=JSON" //35th/Archer
                print("case 4")
                print(vc.feed)
            case 5:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41060&outputType=JSON" //Ashland
                print("case 5")
                print(vc.feed)
            case 6:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41130&outputType=JSON" //Halsted
                print("case 6")
                print(vc.feed)
            case 7:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41400&outputType=JSON" //Roosevelt
                print("case 7")
                print(vc.feed)
            case 8:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40850&outputType=JSON" //Harold Washington Library-State/Van Buren
                print("case 8")
                print(vc.feed)
            case 9:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40160&outputType=JSON" //LaSalle/Van Buren
                print("case 9")
                print(vc.feed)
            case 10:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40040&outputType=JSON" //Quincy
                print("case 10")
                print(vc.feed)
            case 11:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40730&outputType=JSON" //Washington/Wells
                print("case 11")
                print(vc.feed)
            case 12:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40380&outputType=JSON" //Clark/Lake
                print("case 12")
                print(vc.feed)
            case 13:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40260&outputType=JSON" //State/Lake
                print("case 13")
                print(vc.feed)
            case 14:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40200&outputType=JSON" //Randolph/Wabash
                print("case 14")
                print(vc.feed)
            default:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40680&outputType=JSON" //Adams/Wabash
                print("case default")
                print(vc.feed)
            }
        }
    }
}

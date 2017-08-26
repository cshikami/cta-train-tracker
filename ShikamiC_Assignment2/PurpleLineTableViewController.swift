//
//  PurpleLineTableViewController.swift
//  ShikamiC_Assignment2
//
//  Created by Christopher Shikami on 5/22/17.
//  Copyright © 2017 Chris. All rights reserved.
//

import UIKit

class PurpleLineTableViewController: UITableViewController {
    
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
        return purplelinestations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "purplelinecell", for: indexPath)
        
        let station = purplelinestations[indexPath.row]
        
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
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41050&outputType=JSON" //Linden
                print("case 0")
                print(vc.feed)
            case 1:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41250&outputType=JSON" //Central
                print("case 1")
                print(vc.feed)
            case 2:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40400&outputType=JSON" //Noyes
                print("case 2")
                print(vc.feed)
            case 3:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40520&outputType=JSON" //Foster
                print("case 3")
                print(vc.feed)
            case 4:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40050&outputType=JSON" //Davis
                print("case 4")
                print(vc.feed)
            case 5:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40690&outputType=JSON" //Dempster
                print("case 5")
                print(vc.feed)
            case 6:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40270&outputType=JSON" //Main
                print("case 6")
                print(vc.feed)
            case 7:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40840&outputType=JSON" //South Blvd
                print("case 7")
                print(vc.feed)
            case 8:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40900&outputType=JSON" //Howard
                print("case 8")
                print(vc.feed)
            case 9:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40540&outputType=JSON" //Wilson
                print("case 9")
                print(vc.feed)
            case 10:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40080&outputType=JSON" //Sheridan
                print("case 10")
                print(vc.feed)
            case 11:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41320&outputType=JSON" //Belmont
                print("case 11")
                print(vc.feed)
            case 12:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41210&outputType=JSON" //Wellington
                print("case 12")
                print(vc.feed)
            case 13:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40530&outputType=JSON" //Diversey
                print("case 13")
                print(vc.feed)
            case 14:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41220&outputType=JSON" //Fullerton
                print("case 14")
                print(vc.feed)
            case 15:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40660&outputType=JSON" //Armitage
                print("case 15")
                print(vc.feed)
            case 16:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40800&outputType=JSON" //Sedgwick
                print("case 16")
                print(vc.feed)
            case 17:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40710&outputType=JSON" //Chicago
                print("case 17")
                print(vc.feed)
            case 18:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40460&outputType=JSON" //Merchandise Mart
                print("case 18")
                print(vc.feed)
            case 19:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40380&outputType=JSON" //Clark/Lake
                print("case 19")
                print(vc.feed)
            case 20:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40260&outputType=JSON" //State/Lake
                print("case 20")
                print(vc.feed)
            case 21:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40200&outputType=JSON" //Randolph/Wabash
                print("case 21")
                print(vc.feed)
            case 22:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40680&outputType=JSON" //Adams/Wabash
                print("case 22")
                print(vc.feed)
            case 23:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40850&outputType=JSON" //Harold Washington Library-State/Van Buren
                print("case 23")
                print(vc.feed)
            case 24:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40160&outputType=JSON" //LaSalle/Van Buren
                print("case 24")
                print(vc.feed)
            case 25:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40040&outputType=JSON" //Quincy
                print("case 25")
                print(vc.feed)
            default:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40730&outputType=JSON" //Washington/Wells
                print("default")
                print(vc.feed)
            }
        }
    }
}

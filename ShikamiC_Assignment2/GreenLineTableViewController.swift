//
//  GreenLineTableViewController.swift
//  ShikamiC_Assignment2
//
//  Created by Christopher Shikami on 5/22/17.
//  Copyright © 2017 Chris. All rights reserved.
//

import UIKit

class GreenLineTableViewController: UITableViewController {
    
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
        return greenlinestations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "greenlinecell", for: indexPath)
        
        let station = greenlinestations[indexPath.row]
        
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
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40020&outputType=JSON" //Harlem/Lake
                print("case 0")
                print(vc.feed)
            case 1:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41350&outputType=JSON" //Oak Park
                print("case 1")
                print(vc.feed)
            case 2:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40610&outputType=JSON" //Ridgeland
                print("case 2")
                print(vc.feed)
            case 3:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41260&outputType=JSON" //Austin
                print("case 3")
                print(vc.feed)
            case 4:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40280&outputType=JSON" //Central
                print("case 4")
                print(vc.feed)
            case 5:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40700&outputType=JSON" //Laramie
                print("case 5")
                print(vc.feed)
            case 6:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40480&outputType=JSON" //Cicero
                print("case 6")
                print(vc.feed)
            case 7:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40030&outputType=JSON" //Pulaski
                print("case 7")
                print(vc.feed)
            case 8:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41670&outputType=JSON" //Conservatory-Central Park Drive
                print("case 8")
                print(vc.feed)
            case 9:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41070&outputType=JSON" //Kedzie
                print("case 9")
                print(vc.feed)
            case 10:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41360&outputType=JSON" //California
                print("case 10")
                print(vc.feed)
            case 11:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40170&outputType=JSON" //Ashland
                print("case 11")
                print(vc.feed)
            case 12:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41510&outputType=JSON" //Morgan
                print("case 12")
                print(vc.feed)
            case 13:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41160&outputType=JSON" //Clinton
                print("case 13")
                print(vc.feed)
            case 14:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40380&outputType=JSON" //Clark/Lake
                print("case 14")
                print(vc.feed)
            case 15:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40260&outputType=JSON" //State/Lake
                print("case 15")
                print(vc.feed)
            case 16:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40200&outputType=JSON" //Randolph/Wabash
                print("case 16")
                print(vc.feed)
            case 17:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40680&outputType=JSON" //Adams/Wabash
                print("case 17")
                print(vc.feed)
            case 18:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41400&outputType=JSON" //Roosevelt
                print("case 18")
                print(vc.feed)
            case 19:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41690&outputType=JSON" //Cermak-McCormick Place
                print("case 19")
                print(vc.feed)
            case 20:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41120&outputType=JSON" //35th-Bronzeville-IIT
                print("case 20")
                print(vc.feed)
            case 21:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40300&outputType=JSON" //Indiana
                print("case 21")
                print(vc.feed)
            case 21:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41270&outputType=JSON" //43rd
                print("case 21")
                print(vc.feed)
            case 22:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41080&outputType=JSON" //47th
                print("case 22")
                print(vc.feed)
            case 23:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40130&outputType=JSON" //51st
                print("case 23")
                print(vc.feed)
            case 24:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40510&outputType=JSON" //Garfield
                print("case 24")
                print(vc.feed)
            case 25:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41140&outputType=JSON" //King Drive
                print("case 24")
                print(vc.feed)
            case 26:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40720&outputType=JSON" //Cottage Grove
                print("case 24")
                print(vc.feed)
            case 27:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40940&outputType=JSON" //Halsted
                print("case 24")
                print(vc.feed)
            default:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40170&outputType=JSON" //Ashland/63rd
                print("default")
                print(vc.feed)
            }
        }
    }
}

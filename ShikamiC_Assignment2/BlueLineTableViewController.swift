//
//  BlueLineTableViewController.swift
//  ShikamiC_Assignment2
//
//  Created by Christopher Shikami on 5/16/17.
//  Copyright © 2017 Chris. All rights reserved.
//

import UIKit

class BlueLineTableViewController: UITableViewController {
    
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
        return bluelinestations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bluelinecell", for: indexPath)
        
        let station = bluelinestations[indexPath.row]
        
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
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40890&outputType=JSON" //O'Hare
                print("case 0")
                print(vc.feed)
            case 1:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40820&outputType=JSON" //Rosemont
                print("case 1")
                print(vc.feed)
            case 2:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40230&outputType=JSON" //Cumberland
                print("case 2")
                print(vc.feed)
            case 3:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40750&outputType=JSON" //Harlem
                print("case 3")
                print(vc.feed)
            case 4:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41280&outputType=JSON" //Jefferson Park
                print("case 4")
                print(vc.feed)
            case 5:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41330&outputType=JSON" //Montrose
                print("case 5")
                print(vc.feed)
            case 6:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40550&outputType=JSON" //Irving Park
                print("case 6")
                print(vc.feed)
            case 7:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41240&outputType=JSON" //Addison
                print("case 7")
                print(vc.feed)
            case 8:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40060&outputType=JSON" //Belmont
                print("case 8")
                print(vc.feed)
            case 9:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41020&outputType=JSON" //Logan Square
                print("case 9")
                print(vc.feed)
            case 10:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40570&outputType=JSON" //California
                print("case 10")
                print(vc.feed)
            case 11:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40670&outputType=JSON" //Western
                print("case 11")
                print(vc.feed)
            case 12:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40590&outputType=JSON" //Damen
                print("case 12")
                print(vc.feed)
            case 13:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40320&outputType=JSON" //Division
                print("case 13")
                print(vc.feed)
            case 14:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41410&outputType=JSON" //Chicago
                print("case 14")
                print(vc.feed)
            case 15:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40490&outputType=JSON" //Grand
                print("case 15")
                print(vc.feed)
            case 16:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40380&outputType=JSON" //Clark/Lake
                print("case 16")
                print(vc.feed)
            case 17:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40370&outputType=JSON" //Washington
                print("case 17")
                print(vc.feed)
            case 18:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40790&outputType=JSON" //Monroe
                print("case 18")
                print(vc.feed)
            case 19:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40070&outputType=JSON" //Jackson
                print("case 19")
                print(vc.feed)
            case 20:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41340&outputType=JSON" //LaSalle
                print("case 20")
                print(vc.feed)
            case 21:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40430&outputType=JSON" //Clinton
                print("case 21")
                print(vc.feed)
            case 21:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40350&outputType=JSON" //UIC-Halsted
                print("case 21")
                print(vc.feed)
            case 22:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40470&outputType=JSON" //Racine
                print("case 22")
                print(vc.feed)
            case 23:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40810&outputType=JSON" //Illinois Medical District
                print("case 23")
                print(vc.feed)
            case 24:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40220&outputType=JSON" //Western
                print("case 24")
                print(vc.feed)
            case 25:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40250&outputType=JSON" //Kedzie-Homan
                print("case 25")
                print(vc.feed)
            case 26:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40920&outputType=JSON" //Pulaski
                print("case 26")
                print(vc.feed)
            case 27:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40970&outputType=JSON" //Cicero
                print("case 27")
                print(vc.feed)
            case 28:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40010&outputType=JSON" //Austin
                print("case 28")
                print(vc.feed)
            case 29:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40180&outputType=JSON" //Oak Park
                print("case 29")
                print(vc.feed)
            case 30:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40980&outputType=JSON" //Harlem
                print("case 30")
                print(vc.feed)
            default:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40390&outputType=JSON" //Forest Park
                print("default")
                print(vc.feed)
            } 
        }
    }
}


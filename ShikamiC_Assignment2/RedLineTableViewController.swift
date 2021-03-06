//
//  RedLineTableViewController.swift
//  ShikamiC_Assignment2
//
//  Created by Christopher Shikami on 5/22/17.
//  Copyright © 2017 Chris. All rights reserved.
//

import UIKit

class RedLineTableViewController: UITableViewController {
    
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
        return redlinestations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "redlinecell", for: indexPath)
        
        let station = redlinestations[indexPath.row]
        
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
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40900&outputType=JSON" //Howard
                print("case 0")
                print(vc.feed)
            case 1:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41190&outputType=JSON" //Jarvis
                print("case 1")
                print(vc.feed)
            case 2:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40100&outputType=JSON" //Morse
                print("case 2")
                print(vc.feed)
            case 3:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41300&outputType=JSON" //Loyola
                print("case 3")
                print(vc.feed)
            case 4:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40760&outputType=JSON" //Granville
                print("case 4")
                print(vc.feed)
            case 5:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40880&outputType=JSON" //Thorndale
                print("case 5")
                print(vc.feed)
            case 6:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41380&outputType=JSON" //Bryn Mawr
                print("case 6")
                print(vc.feed)
            case 7:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40340&outputType=JSON" //Berwyn
                print("case 7")
                print(vc.feed)
            case 8:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41200&outputType=JSON" //Argyle
                print("case 8")
                print(vc.feed)
            case 9:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40770&outputType=JSON" //Lawrence
                print("case 9")
                print(vc.feed)
            case 10:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40540&outputType=JSON" //Wilson
                print("case 10")
                print(vc.feed)
            case 11:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40080&outputType=JSON" //Sheridan
                print("case 11")
                print(vc.feed)
            case 12:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41240&outputType=JSON" //Addison
                print("case 12")
                print(vc.feed)
            case 13:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40060&outputType=JSON" //Belmont
                print("case 13")
                print(vc.feed)
            case 14:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41220&outputType=JSON" //Fullerton
                print("case 14")
                print(vc.feed)
            case 15:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40650&outputType=JSON" //North/Clybourn
                print("case 15")
                print(vc.feed)
            case 16:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40630&outputType=JSON" //Clark/Division
                print("case 16")
                print(vc.feed)
            case 17:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41450&outputType=JSON" //Chicago
                print("case 17")
                print(vc.feed)
            case 18:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40330&outputType=JSON" //Grand
                print("case 18")
                print(vc.feed)
            case 19:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41660&outputType=JSON" //Lake
                print("case 19")
                print(vc.feed)
            case 20:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41090&outputType=JSON" //Monroe
                print("case 20")
                print(vc.feed)
            case 21:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40560&outputType=JSON" //Jackson
                print("case 21")
                print(vc.feed)
            case 21:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41490&outputType=JSON" //Harrison
                print("case 21")
                print(vc.feed)
            case 22:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41400&outputType=JSON" //Roosevelt
                print("case 22")
                print(vc.feed)
            case 23:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41000&outputType=JSON" //Cermak-Chinatown
                print("case 23")
                print(vc.feed)
            case 24:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40190&outputType=JSON" //Sox-35th
                print("case 24")
                print(vc.feed)
            case 25:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41230&outputType=JSON" //47th
                print("case 25")
                print(vc.feed)
            case 26:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41170&outputType=JSON" //Garfield
                print("case 26")
                print(vc.feed)
            case 27:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40910&outputType=JSON" //63rd
                print("case 27")
                print(vc.feed)
            case 28:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40990&outputType=JSON" //69th
                print("case 28")
                print(vc.feed)
            case 29:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40240&outputType=JSON" //79th
                print("case 29")
                print(vc.feed)
            case 30:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=41430&outputType=JSON" //87th
                print("case 30")
                print(vc.feed)
            default:
                vc.feed = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=754621a0565b413383039fd66cd88c6d&mapid=40450&outputType=JSON" //95th/Dan Ryan
                print("default")
                print(vc.feed)
            }
        }
    }
}

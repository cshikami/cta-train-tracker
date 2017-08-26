//
//  DestinationTableViewController.swift
//  ShikamiC_Assignment2
//
//  Created by Christopher Shikami on 5/22/17.
//  Copyright © 2017 Chris. All rights reserved.
//

import UIKit

class DestinationTableViewController: UITableViewController {
    
    class Destinations {
        var destination: String = ""
        var time: String = ""
    }
    
    var feed = ""
    
    var dataAvailable = false
    
    var records = [Destinations]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        parseData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        for r in records {
            r.time = ""
            r.destination = ""
        }
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataAvailable ? records.count : 15
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (dataAvailable) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            let destinationRow = records[indexPath.row]
            cell.textLabel?.text = "Heading towards " + destinationRow.destination
            cell.detailTextLabel?.text = "Arriving at Station: " + destinationRow.time
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceholderCell", for: indexPath)
            return cell
        }
    }
    
    func parseData() {
        guard let feedURL = URL(string: feed) else {
            return
        }
        let request = URLRequest(url: feedURL)
        let task = URLSession.shared.dataTask(with: request) {(data, response, error) in
            if error != nil
            {
                print("Error")
            }
            else {
                if let content = data {
                    
                    do {
                        let json = try JSONSerialization.jsonObject(with: content, options: []) as? [String:Any] ?? [:]
                        if let ctattimetable = json["ctatt"] as? [String:Any] {
                            if let estArrivalTime = ctattimetable["eta"] as? [[String:Any]] {
                                for item in estArrivalTime{
                                    
                                    if let headingTowards = item["destNm"] as? String,
                                        let arrivalTime = item["arrT"] as? String {
                                        let record = Destinations()
                                        record.destination = headingTowards
                                        let formattedDate = String(arrivalTime.characters.suffix(8))
                                        let components = formattedDate.components(separatedBy: ":").flatMap({Int($0)})
                                        let time12h = String(format: "%d:%02d", components[0] % 12, components[1]) + (components[0] < 12 ? "am" : "pm")
                                        record.time = String(time12h)
                                        self.records.append(record)
                                    }
                                    self.dataAvailable = true
                                    DispatchQueue.main.async {
                                        self.tableView.reloadData()
                                    }
                                    
                                    
                                    
                                }
                                
                            }
                        }
                    }
                    catch {
                        
                    }
                }
            }
        }
        task.resume()
    }
}

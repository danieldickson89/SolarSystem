//
//  PlanetListTableViewController.swift
//  SolarSystem
//
//  Created by Daniel Dickson on 2/3/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return PlanetController.sharedInstance.planets.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("planetCell", forIndexPath: indexPath)
        let planet = PlanetController.sharedInstance.planets[indexPath.row]
        
        cell.textLabel?.text = planet.name
        cell.imageView?.image = UIImage(named: planet.imageName)
        cell.detailTextLabel?.text = "Planet \(indexPath.row + 1)"
        

        return cell
    }

    // MARK: - Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toPlanetDetail" {
                if let cell = self.tableView.indexPathForSelectedRow?.row {
                    let planet = PlanetController.sharedInstance.planets[cell]
                    let planetDetailViewController = segue.destinationViewController as! PlanetDetailViewController
                    planetDetailViewController.planet = planet
                }
        }
    }
}

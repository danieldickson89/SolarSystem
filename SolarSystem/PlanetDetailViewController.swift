//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Daniel Dickson on 2/3/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var lengthOfDayLabel: UILabel!
    @IBOutlet weak var planetImageView: UIImageView!
    
    var planet: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let planet = planet {
            updateViewWithPlanet(planet)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateViewWithPlanet(planet: Planet){
        title = planet.name
        planetImageView.image = UIImage(named: planet.imageName)
        diameterLabel.text = "\(planet.diameter)"
        distanceLabel.text = "\(planet.millionKMsFromSun)"
        lengthOfDayLabel.text = "\(planet.dayLength)"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

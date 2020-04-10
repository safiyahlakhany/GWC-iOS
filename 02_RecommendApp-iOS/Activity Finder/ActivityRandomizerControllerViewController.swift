//
//  ActivityRandomizerControllerViewController.swift
//  Activity Finder
//
//  Created by Safiyah Lakhany on 7/9/19.
//  Copyright © 2019 Safiyah Lakhany. All rights reserved.
//

import UIKit

class ActivityRandomizerControllerViewController: UIViewController
{

    @IBOutlet weak var mainImageView: UIImageView!
    
    let activities = ["bike", "beach", "iceskate", "paint"]
    
    override func viewDidLoad()
    {
        setRandomItem()
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func setRandomItem()
    {
        guard let item = activities.randomElement() else { return }
        mainImageView.image = UIImage(named: item)
    }
    
    @IBAction func AnotherOne(_ sender: Any)
    {
        setRandomItem()
    }
    

}

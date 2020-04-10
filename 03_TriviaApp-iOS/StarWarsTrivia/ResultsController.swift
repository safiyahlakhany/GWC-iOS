//
//  ResultsController.swift
//  StarWarsTrivia
//
//  Created by Safiyah Lakhany on 7/10/19.
//  Copyright © 2019 Safiyah Lakhany. All rights reserved.
//

import UIKit

class ResultsController: UIViewController
{


    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var results: UILabel!
    
    let imageArray: [String] = ["yoda", "bb8", "han"]
    
    var numberCorrect: Int = 0
    var total: Int = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        results.text = "You got \(numberCorrect)/\(total)"
        if numberCorrect == 0
        {
            mainImage.image = UIImage(named: imageArray[0])
            return
        }
        mainImage.image = UIImage(named: imageArray[numberCorrect - 1])
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

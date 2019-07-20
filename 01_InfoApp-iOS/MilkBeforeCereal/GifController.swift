//
//  GifController.swift
//  MilkBeforeCereal
//
//  Created by Safiyah Lakhany on 7/16/19.
//  Copyright © 2019 GWC. All rights reserved.
//

import UIKit
import WebKit

class GifController: UIViewController
{
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var xButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    

    @IBAction func cerealButton(_ sender: Any)
    {
        guard let url = URL(string: "https://media1.giphy.com/media/l4pLY0zySvluEvr0c/giphy.gif?cid=790b76115d2eb1da553976572e2e1bd6&rid=giphy.gif")
        else
        {
            return
        }
        
        openWebsite(url: url)
    }
    
    @IBAction func MilkButton(_ sender: Any)
    {
        guard let url = URL(string: "https://media2.giphy.com/media/9GIP2c2hhlHdFVLHt7/source.gif")
            else
        {
            return
        }
        
        openWebsite(url: url)
    }
    
    func openWebsite(url: URL)
    {
        let request = URLRequest(url: url)
        webView.load(request)
        webView.isHidden = false
        xButton.isHidden = false
    }
    
    @IBAction func xButtonPressed(_ sender: Any)
    {
        webView.isHidden = true
        xButton.isHidden = true
    }
    
}

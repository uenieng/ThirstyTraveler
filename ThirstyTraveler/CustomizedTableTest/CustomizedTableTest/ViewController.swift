//
//  ViewController.swift
//  CustomizedTableTest
//
//  Created by cscoi017 on 2016. 8. 19..
//  Copyright © 2016년 Sun. All rights reserved.
//

import UIKit

class DrinkerDetailViewController: UIViewController {

    
    @IBOutlet weak var drinkerImagelabel: UIImageView!
    
    @IBOutlet weak var drinkerTypeLabel: UIImageView!
    
    @IBOutlet weak var drinkerRatingLabel: UILabel!
    
    @IBOutlet weak var drinkerNameLabel: UILabel!
    
    @IBOutlet weak var drinkerLocationLabel: UILabel!
    
    @IBOutlet weak var drinkerGMapLabel: UIButton!
    
    var currentDrinker:Drinker? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        drinkerNameLabel.text = currentDrinker?.name
        
        drinkerLocationLabel.text = String(currentDrinker?.locationString)
        
        drinkerRatingLabel.text = String(currentDrinker?.ratings)
       // drinkerTypeLabel.text = String(currentDrinker?.typeImage)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


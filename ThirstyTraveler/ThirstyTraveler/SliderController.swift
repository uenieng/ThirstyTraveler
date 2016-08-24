//
//  SliderController.swift
//  ThirstyTraveler
//
//  Created by nariyoon on 2016. 8. 24..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import UIKit
import GoogleMaps

class SliderController: UIViewController {
    var currentValue:Double = 0
    let viewChange = MapViewController()
    var silderView: UIView!
    
    @IBOutlet weak var Slider: UISlider!
    
    @IBOutlet weak var Label: UILabel!
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        currentValue = round(Double(sender.value)*10)/10
        Label.text = "\(currentValue)"
        
        viewChange.sliderValue = currentValue
        
        viewChange.viewDidLoad()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

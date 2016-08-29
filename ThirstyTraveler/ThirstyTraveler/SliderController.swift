//
//  SliderController.swift
//  ThirstyTraveler
//
//  Created by nariyoon on 2016. 8. 24..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import UIKit
import GoogleMaps
var currentValue:Double = 0.0
var draftValue:Double = 0.0
var breweryValue:Double = 0.0
var factoryValue:Double = 0.0
class SliderController: UIViewController {
    
    let viewChange = MapViewController()
    var silderView: UIView!
    
    @IBOutlet weak var Slider: UISlider!
    @IBOutlet weak var draftSlider: UISlider!
    
    @IBOutlet weak var brewerySlider: UISlider!
    @IBOutlet var factorySlider: UIView!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var draftLabel: UILabel!
    @IBOutlet weak var breweryLabel: UILabel!
    @IBOutlet weak var factoryLabel: UILabel!
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        currentValue = round(Double(sender.value)*10)/10
        Label.text = "\(currentValue)"
    }
    
    @IBAction func draftValueChanged(sender: UISlider) {
        draftValue = round(Double(sender.value)*10)/10
        draftLabel.text = "\(draftValue)"
    }
    
    @IBAction func breweryValueChanged(sender: UISlider) {
        breweryValue = round(Double(sender.value)*10)/10
        breweryLabel.text = "\(breweryValue)"
    }
    
    @IBAction func factoryValueChanged(sender: UISlider) {
        factoryValue = round(Double(sender.value)*10)/10
        factoryLabel.text = "\(factoryValue)"
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

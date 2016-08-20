//
//  FavoBeenViewController.swift
//  ThirstyTraveler
//
//  Created by 양문영 on 2016. 8. 19..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import UIKit

class FavoBeenViewController: UIViewController {
    @IBOutlet var FavoBeen: UISegmentedControl!
    @IBOutlet var FavoEmbed: UIView!
    
    var beerTableVC:FavoBeenTableViewController?

    @IBAction func FaveBeenEmbed(sender: UISegmentedControl) -> Array<BeerPlace> {
        
        var returnValue:Array<BeerPlace> = []
        
        switch(FavoBeen.selectedSegmentIndex)
        {
        case 0:
            for .name in [Brewery]{
                
                if self.wishlist == true {
                    returnValue += self
                }
            
            }
             break
        case 1:
            for .name in [Brewery]{
                
                if self.haveBeen == true {
                    returnValue += self
                }
                
            }
            break
            
        default:
            break
            
        }
        
        return returnValue
        
        //여기에 returnValue array 값 childViewControllers로 보내는 매쏘드 작성 해야함
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        beerTableVC = self.childViewControllers.first
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

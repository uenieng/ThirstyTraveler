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
    
    var beerTableVC:FavobeenTableViewController?

    
    
    @IBAction func FavoBeenEmbed(sender: UISegmentedControl){
        
     
       
        
        switch(FavoBeen.selectedSegmentIndex)
        {
        case 0:
            for items in breweryArray0 {
                
                if items.wishlist == true {
                    wishlist += [items]
                }
                
            
            }
            for items in factoryArray0 {
                if items.wishlist == true{
                    wishlist += [items]
                }
            }
            
            for items in draftArray0 {
                if items.wishlist == true{
                    wishlist += [items]
                }
            }
             break
        case 1:
            for items in breweryArray0 {
                
                if items.haveBeen == true {
                    haveBeen += [items]
                }
                
            }
            for items in factoryArray0 {
                
                if items.haveBeen == true {
                    haveBeen += [items]
                }
                
            }
            for items in draftArray0 {
                
                if items.haveBeen == true {
                    haveBeen += [items]
                }
                
            }

            break
            
        default:
            break
            
        }
        
        return
        
        //여기에 returnValue array 값 childViewControllers로 보내는 매쏘드 작성 해야함
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let wishlist:Array<BeerPlace> = []
        let haveBeen:Array<BeerPlace> = []
        let favobeen:[String:[BeerPlace]] = ["즐겨찾기":wishlist,"방문기록":haveBeen]

        
       
        
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

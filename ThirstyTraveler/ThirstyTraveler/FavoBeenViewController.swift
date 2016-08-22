//
//  FavoBeenViewController.swift
//  ThirstyTraveler
//
//  Created by 양문영 on 2016. 8. 19..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import UIKit



class FavoBeenViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet var FavoBeen: UISegmentedControl!
    @IBOutlet var FavoEmbed: UIView!
    
    var beerTableVC:FavobeenTableViewController?
    var wishlist:Array<BeerPlace> = []
    var haveBeen:Array<BeerPlace> = []
  //  let favobeen:[String:[BeerPlace]] = ["즐겨찾기":wishlist,"방문기록":haveBeen]

    
    
    @IBAction func FavoBeenEmbed(sender: UISegmentedControl){
        

       
        
        switch(FavoBeen.selectedSegmentIndex)
        {
        case 0:
            for items in breweryArray0 {
                
                if items.wishlist == true {
                    wishlist += [items]
                }
                
              //  print(wishlist[0].name)

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

     
        
       
        
        // Do any additional setup after loading the view.
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        var returnValue = 0
        
        
        
        return returnValue
        
        
        
    }
    //Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls) 
    
    
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    
    {
        let favobeenCell = tableview.dequeueReusableCellWithIdentifier("favobeenCell", forIndexPath: indexPath)
        
        return favobeenCell
    }
    
    
   /* public func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0 //favobeen.count
    }
*/
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

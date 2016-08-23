//
//  DetailTableViewController.swift
//  CustomizedTableTest
//
//  Created by cscoi017 on 2016. 8. 22..
//  Copyright © 2016년 Sun. All rights reserved.
//

import UIKit

//merging classes
//1.parent class
class BeerPlace : NSObject {
    
    var name:String = ""
    var type:String = ""
    var ratings:Double?
    var location:(Double,Double)
    var wishlist:Bool=true
    var haveBeen:Bool=true
    var officeNumber:Int
    var officeTime:[(String,Int,Int)]
    
    
    init (name:String, type:String, location:(Double,Double), officeNumber:Int, officeTime:[(String,Int,Int)]){
        self.name = name
        self.type = type
        self.location = location
        self.officeNumber = officeNumber
        self.officeTime = officeTime
        
    }
}
////////으ㅏ아아아아ㅏㅏㅏ 각 테이블뷰 만들기 껄껄
//2. factory
class Factory : BeerPlace{
    var programList:[String]
    var officeURL:String
    init(){
        self.programList =  [""]
        self.officeURL = "http//"
        super.init(name:"", type:"", location:(0,0), officeNumber: 01000000000, officeTime: [("월~일",0900,1800)])
    }
    
    
    convenience init( name:String, type:String, location:(Double, Double),officeTime:[(String,Int,Int)], programList:[String], officeNumber:Int, officeURL:String)
    {
        self.init()
        self.officeTime = officeTime
        self.programList = programList
        self.officeNumber = officeNumber
        self.officeURL = officeURL
        self.name = name
        self.type = type
        self.location = location
    }
}

//3. draft beer
class DraftBeer : BeerPlace{
    var draftPriceList : [String:Int]
    var bottledDPriceList : [String:Int]
    init(){
        self.draftPriceList = [:]
        self.bottledDPriceList = [:]
        super.init(name:"", type:"", location:(0,0), officeNumber: 01000000000, officeTime: [("월~일",0900,1800)])
    }
    
    
    convenience init(officeTime:[(String,Int,Int)], draftPriceList:[String:Int], bottledDPriceList:[String:Int],OfficeNumber:Int,  name:String, type:String, location:(Double, Double))
    {
        self.init()
        self.officeTime = officeTime
        self.draftPriceList = draftPriceList
        self.bottledDPriceList = bottledDPriceList
        self.officeNumber = officeNumber
        self.name = name
        self.type = type
        self.location = location
    }
}

//4. brewry
class Brewery:BeerPlace{
    
    /*   typealias hours = (openHour:Int,openMinute:Int,closeHour:Int,closeHour:Int)
    typealias Product = [String:Int]
    
    var workingHour:hours = (0,0,0,0)*/
    var brewedPricelist:[String:Int]?
    var bottledBPricelist:[String:Int]?
    
    
    init (){
        self.bottledBPricelist = [:]
        self.brewedPricelist = [:]
        
        super.init(name:"", type:"", location:(0,0),officeNumber:0,officeTime:[("",0,0)])
        
        
        
    }
    
    convenience init (name: String, type: String, location:(Double,Double), officeNumber: Int, officeTime:[(String, Int, Int)],brewedPricelist:[String:Int],bottledBPricelist:[String:Int])
    {
        self.init()
        self.name = name
        self.type = type
        self.location = location
        self.officeNumber = officeNumber
        self.officeTime = officeTime
        self.brewedPricelist = brewedPricelist
        self.bottledBPricelist = bottledBPricelist
    }
    
}



////

class DetailTableViewController: UITableViewController {

    var poi :BeerPlace? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()

    
    
    
    
    
    
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //let className = classNameAsString(poi!)
        
        if section == 0{
            
        } else {
            
        }
        return 0
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
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

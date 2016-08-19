//
//  DrinkTableViewController.swift
//  CustomizedTableTest
//
//  Created by cscoi017 on 2016. 8. 19..
//  Copyright © 2016년 Sun. All rights reserved.
//

import UIKit


class Drinker {
    var name:String
    var locationString:String
    var location:(Double,Double)
    var ratings:Double
    var imageName:String
    var typeImage:String
    
    init(name:String){
        self.name = name
        self.locationString = ""
        self.location = (0.0,0.0)
        self.ratings = 0.0
        self.imageName = "DefaultImage"
        self.typeImage = "DefaultTypeImage"
    }
}

class DrinkTableViewController: UITableViewController {

    var drinkers:[String:[Drinker]] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let drinker1 = Drinker(name:"버드나무")
        drinker1.locationString = "대한민국 강원도 강릉"
        drinker1.ratings=3.8
        
        let drinker2 = Drinker(name:"강릉펍")
        drinker1.locationString = "대한민국 강원도 강릉"
        drinker1.ratings=4.2
        let gangwon:[Drinker] = [drinker1, drinker2]
        
        let drinker3 = Drinker(name:"히든트랙")
        drinker1.locationString = "대한민국 서울시 성북구"
        drinker1.ratings=3.8
        
        let drinker4 = Drinker(name:"TLC")
        drinker1.locationString = "대한민국 서울시 성북구"
        drinker1.ratings=4.2
        let seoul:[Drinker] = [drinker3, drinker4]
        
        drinkers = ["강원도":gangwon, "서울":seoul]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return drinkers.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let areaNames:[String] = Array(drinkers.keys)
        let areaName:String = areaNames[section]
        let areaDrinkers:[Drinker] = drinkers[areaName]!
        return areaDrinkers.count

    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DrinkerCell", forIndexPath: indexPath)as! DrinkerTableViewCell

        // Configure the cell...
        let areaNames:[String] = Array(drinkers.keys)
        let areaName:String = areaNames[indexPath.section]
        
        let areaForCell:[Drinker] = drinkers[areaName]!
        let drinkerForCell = areaForCell[indexPath.row]
        
        cell.nameLabel.text = drinkerForCell.name
        cell.locationLabel.text = String(drinkerForCell.locationString)
        cell.ratingsLabel.text = String(drinkerForCell.ratings)
        
        
        

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

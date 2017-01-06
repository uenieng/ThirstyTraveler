//
//  DraftDetailTableViewController.swift
//  CustomizedTableTest
//
//  Created by cscoi017 on 2016. 8. 29..
//  Copyright © 2016년 Sun. All rights reserved.
//

import UIKit

class DraftDetailTableViewController: UITableViewController {
    
    var myData:[DraftBeer] = []
    var  currentDraft:DraftBeer? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myData += defaultDraft()
        
        currentDraft = myData[0]
        
        tableView.rowHeight = UITableViewAutomaticDimension
        //tableView.estimatedRowHeight = 160
        
        
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
        return 4
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        var rowCount:Int = 0
        
        if section == 0{
            rowCount = 1
        }
        if section == 1{
            rowCount = currentDraft!.officeTime.count
        }
        if section == 2{
            rowCount = currentDraft!.draftPriceList.count
        }
        if section == 3{
            rowCount = currentDraft!.bottledDPriceList.count
        }
        return rowCount
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var identifier:String
        
        switch indexPath.section{
            case 0:
                identifier = "ProfileTableViewCell"
        case 1:
            identifier = "OfficeTimeTableViewCell"
        case 2:
            identifier = "DraftBeerTableViewCell"
        case 3:
            identifier = "BottleBeerTableViewCell"

        default : identifier = ""
        }
        
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath)

        // Configure the cell...

        
        if let cleanDraft = currentDraft{
            let openTime:OpenTime = cleanDraft.officeTime[indexPath.row]
            
            func vacay(openTime: OpenTime) -> String{
                var isVacay:String = ""
                
                if openTime.open == openTime.close
                {isVacay = "휴무"}
                else {isVacay = "\(openTime.open) ~ \(openTime.close)"}
                
                return isVacay
            }
            
            var dBNameList:[String] = []
            dBNameList += cleanDraft.draftPriceList.keys
            
            var dBPriceList:[Int] = []
            dBPriceList += cleanDraft.draftPriceList.values
            
            var bBNameList:[String] = []
            bBNameList += cleanDraft.bottledDPriceList.keys
            
            var bBPriceList:[Int] = []
            bBPriceList += cleanDraft.bottledDPriceList.values
            
            
            
            
            
            switch indexPath.section{
            case 0:
                let cell0 = cell as! ProfileTableViewCell
                cell0.DraftNameLabel.text = cleanDraft.name
                cell0.DraftRatingLabel.text = String(cleanDraft.ratings)
                cell0.LocationLabel.text = cleanDraft.address
                cell0.FavoritesLabel.enabled = cleanDraft.wishlist
                cell0.VisitedLabel.enabled = cleanDraft.haveBeen
            case 1:
                
                let cell1 = cell as! OfficeTimeTableViewCell
                

                cell1.DayLabel.text = openTime.day
                cell1.TimeLabel.text = vacay(openTime)
                /*if openTime.open == openTime.close{
                    "휴무"
                }
                else {"\(openTime.open) ~ \(openTime.close)"}*/
            case 2:
                let cell2 = cell as! DraftBeerTableViewCell
<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> master
=======

>>>>>>> master
                let(dBname) = dBNameList [indexPath.row]
                cell2.DBNameLabel.text = dBname
                let(dBprice) = dBPriceList [indexPath.row]
                cell2.DBPriceLabel.text = "\(dBprice) 원"
<<<<<<< HEAD
<<<<<<< HEAD
                /*cell2.DBNameLabel.text = String(beerName(dBNameList))*/
                /*cell2.DBNameLabel.text = String(for number in 0...dBNameList.count{
                    "\(dBNameList[number])"})*/
                    //String(cleanDraft.draftPriceList.keys)
                /*
                for number in 0...3{
                "\(dBNameList[number])"
                }
                */
                

                cell2.DBPriceLabel.text = "\(dBPriceList[0]) 원"

                    //String(cleanDraft.draftPriceList.values)
=======
>>>>>>> master
=======
>>>>>>> master
            case 3:
                let cell3 = cell as! BottleBeerTableViewCell
                let(bBname) = bBNameList [indexPath.row]
                let(bBprice) = bBPriceList [indexPath.row]
                cell3.BBNameLabel.text = bBname
                cell3.BBPriceLabel.text = "\(bBprice) 원"
            default: break
            
            }
        }

        return cell
    }
    
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        var returnValue:String = ""
        if (section == 1){
            returnValue = "영업시간"
        }
        if (section == 2){
            returnValue = "Draft Beer"
        }
        if (section == 3){
            returnValue = "Bottle Beer"
        }
        
        return returnValue
        
            }

    

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

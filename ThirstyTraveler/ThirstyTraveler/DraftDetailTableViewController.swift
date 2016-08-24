
//  DraftDetailTableViewController.swift
//  ThirstyTraveler
//
//  Created by cscoi017 on 2016. 8. 23..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import UIKit

class DraftDetailTableViewController: UITableViewController {
    
    var myData:[DraftBeer] = []
    var currentDraft:DraftBeer? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myData += defaultDraft()
        //아래부분을 앞의 뷰와 연결해야함.
        currentDraft = myData[0]
        
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
        return 3
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
            identifier = "DraftDetailTableViewCell"
        case 1:
            identifier = "OfficeTimeCell"
            
        case 2:
            identifier = "DraftBeerCell"
            
        case 3:
            identifier = "BottledBeerCell"
        default : identifier = ""
        }
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath)
        
        // Configure the cell...
        if let cleanDraft = currentDraft{
            switch indexPath.section{
                /*  case 0:
                let cell0 = cell as! DraftDetailTableViewCell
                cell0.draftProfile.image = "beer1_yellow
                //cell0.draftType
                cell0.draftTitle.text = cleanDraft.name
                cell0.draftRatings.text = String(cleanDraft.ratings)
                cell0.draftLocation.text = cleanDraft.placeID
                cell0.draftFavorites.enabled = cleanDraft.wishlist
                cell0.draftVisited.enabled = cleanDraft.haveBeen*/
                
            case 0:
                let cell0 = cell as! DraftDetailTableViewCell
                //  cell0.draftProfile.image = beer1
                cell0.draftRatingsLabel.text = cleanDraft.name
                cell0.draftLocationLabel.text = cleanDraft.placeID
                cell0.draftFavorites.enabled = cleanDraft.wishlist
                cell0.draftVisited.enabled = cleanDraft.haveBeen
                
            case 1:
                let openTime:OpenTime = cleanDraft.officeTime[indexPath.row]
                //(cell as! OfficeTimeCell).dayLabel.text = openTime.day*/
                let cell1 = cell as! OfficeTimeCell
                cell1.dayLabel.text = openTime.day
                cell1.timeLabel.text = "\(openTime.open) ~ \(openTime.close)"
                //(cell as! OfficeTimeCell).timeLabel.text = "\(openTime.open)~\(openTime.close)"
                
            case 2:
                //let nameList:[String] = cleanDraft.draftPriceList.keys
                
                let cell2 = cell as! DraftBeerCell
                cell2.draftBeerNameLabel.text = String(cleanDraft.draftPriceList.keys)
                cell2.draftBeerPriceLabel.text = String(cleanDraft.draftPriceList.values)
                /*
                (cell as! DraftBeerCell).draftBeerNameLabel.text = String(currentDraft!.draftPriceList.keys)
                (cell as!DraftBeerCell).draftBeerPriceLabel.text = String(currentDraft!.draftPriceList.values)*/
                /*default:
                (cell as!BottledBeerCell).bottledBeerNameLabel.text = String(currentDraft!.bottledDPriceList.keys)
                (cell as!BottledBeerCell).bottledBeerPriceLabel.text = String(currentDraft!.bottledDPriceList.values)
                */
            case 3 :
                let cell3 = cell as! BottledBeerCell
                cell3.bottledBeerNameLabel.text = String(cleanDraft.bottledDPriceList.keys)
                cell3.bottledBeerNameLabel.text = String(cleanDraft.bottledDPriceList.values)
            default: break
            }
            
        }
        
        return cell
    }
    
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
        
        
        var returnValue:String = ""
        if (section == 1){
            returnValue = "영업시간"
        }
        if (section == 2){
            returnValue =  "Draft Beer"
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

class DraftDetailTableViewCell:UITableViewCell{
    @IBOutlet weak var draftProfile: UIImageView!
    @IBOutlet weak var draftNameLabel: UILabel!
    @IBOutlet weak var draftRatingsLabel: UILabel!
    @IBOutlet weak var draftLocationLabel: UILabel!
    @IBOutlet weak var draftFavorites: UIButton!
    @IBOutlet weak var draftVisited: UIButton!
    
}


class OfficeTimeCell: UITableViewCell{
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
}

class DraftBeerCell: UITableViewCell{
    @IBOutlet weak var draftBeerNameLabel: UILabel!
    @IBOutlet weak var draftBeerPriceLabel: UILabel!
    
}

class BottledBeerCell: UITableViewCell{
    @IBOutlet weak var bottledBeerNameLabel: UILabel!
    
    @IBOutlet weak var bottledBeerPriceLabel: UILabel!
}



//  DraftDetailTableViewController.swift
//  ThirstyTraveler
//
//  Created by cscoi017 on 2016. 8. 23..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import UIKit

class DraftDetailTableViewController: UITableViewController {

    var myData:[DraftBeer] = []
    var currentDraft:DraftBeer?
    
    
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
        var rowCount:Int
        if section == 0{
            rowCount = currentDraft!.officeTime.count
        }
        
        if section == 1{
            rowCount = currentDraft!.draftPriceList.count
        }
        
        else{
            rowCount = currentDraft!.bottledDPriceList.count
        }
        
        
        return rowCount
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let identifier:String
        switch indexPath.section{
        case 0:
            identifier = "OfficeTimeCell"

        case 1:
            identifier = "DraftBeerCell"

        default:
            identifier = "BottledBeerCell"

        
        }
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...
        switch indexPath.section{
        case 0:
            //(cell as!DraftDetailTableViewCell).draftProfile
            //(cell as!DraftDetailTableViewCell).draftType
            (cell as!DraftDetailTableViewCell).draftTitle.text = currentDraft!.name
            //(cell as!DraftDetailTableViewCell).draftRatings.= currentDraft!.ratings
            (cell as!DraftDetailTableViewCell).draftLocation.text = currentDraft?.placeID
            (cell as!DraftDetailTableViewCell).draftFavorites.enabled = currentDraft!.wishlist
            (cell as!DraftDetailTableViewCell).draftVisited.enabled = currentDraft!.haveBeen
        case 1:
            let openTime:OpenTime = currentDraft!.officeTime[indexPath.row]
            (cell as! OfficeTimeCell).dayLabel.text = openTime.day
            (cell as! OfficeTimeCell).timeLabel.text = "\(openTime.open)~\(openTime.close)"
            
        case 2:
            (cell as! DraftBeerCell).draftBeerNameLabel.text = String(currentDraft!.draftPriceList.keys)
            (cell as!DraftBeerCell).draftBeerPriceLabel.text = String(currentDraft!.draftPriceList.values)
        default:
            (cell as! BottledBeerCell).bottledBeerNameLabel.text = String(currentDraft!.bottledDPriceList.keys)
            (cell as!BottledBeerCell).bottledBeerPriceLabel.text = String(currentDraft!.bottledDPriceList.values)

        }
        
        
        

        return cell
    }
    
    
    func tableView(tableView: UITableView!, titleForHeaderInSection section: Int) -> String!{

        if (section == 1){
            return "영업시간"
        }
        if (section == 2){
            return "Draft Beer"
        }
        if (section == 3){
            return "Bottle Beer"
        }
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

class DraftDetailTableViewCell: UITableViewCell{
    
    @IBOutlet weak var draftProfile: UIImageView!
    @IBOutlet weak var draftType: UIImageView!
    @IBOutlet weak var draftRatings: UILabel!
    @IBOutlet weak var draftLocation: UILabel!
    
    @IBOutlet weak var draftTitle: UILabel!
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


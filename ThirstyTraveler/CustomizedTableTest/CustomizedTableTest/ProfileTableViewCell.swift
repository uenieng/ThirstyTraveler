//
//  ProfileTableViewCell.swift
//  CustomizedTableTest
//
//  Created by cscoi017 on 2016. 8. 29..
//  Copyright © 2016년 Sun. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var ImageLabel: UIImageView!
    @IBOutlet weak var DraftNameLabel: UILabel!
    @IBOutlet weak var DraftRatingLabel: UILabel!
    @IBOutlet weak var LocationLabel: UILabel!
    @IBOutlet weak var FavoritesLabel: UIButton!
    @IBOutlet weak var VisitedLabel: UIButton!
//    @IBOutlet weak var ProfileView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        self.ProfileView.rowHeight = 160.0
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func favoritesTapped(sender: UIButton) {
        let favoritePushed = UIImage(named: "beer_favorites_fill.png") as UIImage!
        FavoritesLabel.setImage(favoritePushed, forState: UIControlState.Normal)
        
    }
    @IBAction func visitedTapped(sender: UIButton) {
        let visitedPushed = UIImage(named:"beer_visited_fill.png") as UIImage!
        VisitedLabel.setImage(visitedPushed, forState: UIControlState.Normal)
    }

}
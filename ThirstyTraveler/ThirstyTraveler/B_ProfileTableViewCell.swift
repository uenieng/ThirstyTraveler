//
//  B_ProfileTableViewCell.swift
//  ThirstyTraveler
//
//  Created by cscoi001 on 2016. 12. 30..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import UIKit

class B_ProfileTableViewCell: UITableViewCell {
    @IBOutlet weak var BreweryNameLabel: UILabel!
    @IBOutlet weak var BreweryRatingsLabel: UILabel!
    @IBOutlet weak var BreweryImageLabel: UIImageView!
    @IBOutlet weak var BreweryAddressLabel: UILabel!
   
    @IBOutlet weak var BreweryFavoritesLabel: UIButton!
    @IBOutlet weak var BreweryVisitedLabel: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

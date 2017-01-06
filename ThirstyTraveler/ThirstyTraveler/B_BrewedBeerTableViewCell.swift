//
//  B_BrewedBeerTableViewCell.swift
//  ThirstyTraveler
//
//  Created by cscoi001 on 2017. 1. 6..
//  Copyright © 2017년 moonyoung. All rights reserved.
//

import UIKit

class B_BrewedBeerTableViewCell: UITableViewCell {

    @IBOutlet weak var BreweryBrBNameLabel: UILabel!
    @IBOutlet weak var BreweryBrBPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

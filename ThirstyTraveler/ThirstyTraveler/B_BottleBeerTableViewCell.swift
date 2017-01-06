//
//  B_BottleBeerTableViewCell.swift
//  ThirstyTraveler
//
//  Created by cscoi001 on 2017. 1. 6..
//  Copyright © 2017년 moonyoung. All rights reserved.
//

import UIKit

class B_BottleBeerTableViewCell: UITableViewCell {

    @IBOutlet weak var BreweryBBPriceLabel: UILabel!
    @IBOutlet weak var BreweryBBNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

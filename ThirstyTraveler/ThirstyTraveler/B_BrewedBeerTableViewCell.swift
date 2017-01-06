//
//  B_BrewedBeerTableViewCell.swift
//  ThirstyTraveler
//
//  Created by cscoi001 on 2016. 12. 30..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import UIKit

class B_BrewedBeerTableViewCell: UITableViewCell {

    @IBOutlet weak var BreweryBrBPriceLabel: UILabel!
    @IBOutlet weak var BreweryBrBNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

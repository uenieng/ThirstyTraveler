//
//  D_DraftBeerTableViewCell.swift
//  ThirstyTraveler
//
//  Created by cscoi017 on 2016. 11. 11..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import UIKit

class D_DraftBeerTableViewCell: UITableViewCell {

    @IBOutlet weak var DraftDBNameLabel: UILabel!
    @IBOutlet weak var DraftDBPriceLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

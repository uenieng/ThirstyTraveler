//
//  D_ProfileTableViewCell.swift
//  ThirstyTraveler
//
//  Created by cscoi017 on 2016. 11. 11..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import UIKit

class D_ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var DraftNameLabel: UILabel!
    @IBOutlet weak var DraftRatingsLabel: UILabel!
    @IBOutlet weak var DraftAddressLabel: UILabel!
    @IBOutlet weak var DraftFavoritesLabel: UIButton!
    @IBOutlet weak var DraftVisitedLabel: UIButton!
    @IBOutlet weak var DraftImageLabel: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


}


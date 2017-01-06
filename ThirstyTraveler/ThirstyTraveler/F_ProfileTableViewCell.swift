//
//  F_ProfileTableViewCell.swift
//  ThirstyTraveler
//
//  Created by cscoi001 on 2016. 12. 30..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import UIKit

class F_ProfileTableViewCell: UITableViewCell {
    @IBOutlet weak var FactoryNameLabel: UILabel!

    @IBOutlet weak var FactoryVisitedLabel: UIButton!
    @IBOutlet weak var FactoryFavoritesLabel: UIButton!
    @IBOutlet weak var FactoryAddressLabel: UILabel!
    @IBOutlet weak var FactoryRatingsLabel: UILabel!
    @IBOutlet weak var FactoryImageLabel: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

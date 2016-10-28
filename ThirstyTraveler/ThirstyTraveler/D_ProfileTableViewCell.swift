//
//  D_ProfileTableViewCell.swift
//  ThirstyTraveler
//
//  Created by cscoi017 on 2016. 10. 28..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import UIKit

class D_ProfileTableViewCell: UITableViewCell {
    @IBOutlet weak var LocationLabel: UILabel!
    @IBOutlet weak var ImageLabel: UIImageView!
    @IBOutlet weak var DraftNameLabel: UILabel!
    @IBOutlet weak var FavoritesLabel: UIButton!
    @IBOutlet weak var VisitedLabel: UIButton!
    @IBOutlet weak var DraftRatingsLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  BottleBeerTableViewCell.swift
//  CustomizedTableTest
//
//  Created by cscoi017 on 2016. 8. 29..
//  Copyright © 2016년 Sun. All rights reserved.
//

import UIKit

class BottleBeerTableViewCell: UITableViewCell {

    @IBOutlet weak var BBNameLabel: UILabel!
    @IBOutlet weak var BBPriceLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

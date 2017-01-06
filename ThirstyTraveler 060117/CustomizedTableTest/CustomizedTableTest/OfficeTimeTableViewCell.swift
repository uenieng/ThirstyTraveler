//
//  OfficeTimeTableViewCell.swift
//  CustomizedTableTest
//
//  Created by cscoi017 on 2016. 8. 29..
//  Copyright © 2016년 Sun. All rights reserved.
//

import UIKit

class OfficeTimeTableViewCell: UITableViewCell {
    @IBOutlet weak var DayLabel: UILabel!
    @IBOutlet weak var TimeLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

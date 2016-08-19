//
//  DrinkerTableViewCell.swift
//  CustomizedTableTest
//
//  Created by cscoi017 on 2016. 8. 19..
//  Copyright © 2016년 Sun. All rights reserved.
//

import UIKit

class DrinkerTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var typeLabel: UIImageView!
    
    @IBOutlet weak var ratingsLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

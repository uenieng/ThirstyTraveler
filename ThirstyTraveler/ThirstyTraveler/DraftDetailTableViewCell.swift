//
//  DraftDetailTableViewCell.swift
//  ThirstyTraveler
//
//  Created by cscoi017 on 2016. 8. 23..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import UIKit

class DraftDetailTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        var image : UIImageView = UIImageView(iden: "afte")!
        bgImage = UIImageView(image: image)
        bgImage.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
        view.addSubview(bgImage)
        
    }

    

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

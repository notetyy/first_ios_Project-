//
//  FeedTableViewCell.swift
//  MyFirstProjec
//
//  Created by std114 on 5/29/17.
//  Copyright © 2017 std114. All rights reserved.
//

import UIKit

class FeedTableViewCell: UITableViewCell {

    @IBOutlet weak var IconimgView: UIImageView!
    @IBOutlet weak var Tital: UILabel!
    @IBOutlet weak var subTital: UILabel!
    @IBOutlet weak var accessory: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

// SoundTableViewCell.swift
//  Early
//  Created by annotations on 1/27/19.
//  Copyright © 2019 Mikael Arage. All rights reserved.


import UIKit

class SoundTableViewCell: UITableViewCell {

    @IBOutlet weak var soundName: UILabel!
    @IBOutlet weak var soundImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

// SoundTableViewCell.swift
//  Early
//  Created by annotations on 1/27/19.
//  Copyright © 2019 Mikael Arage. All rights reserved.
import UIKit
//import AVFoundation

class SoundTableViewCell: UITableViewCell {
    
    @IBOutlet weak var soundName: UILabel!
    @IBOutlet weak var soundImage: UIImageView!
    
    var soundN : sound!{
        didSet {
            updateUI()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI()  {
       soundImage.image = UIImage(named: soundN.thumbnailFilename)
       soundImage.layer.cornerRadius = 8.0
       soundImage.layer.masksToBounds = true
        
        //soundName.text = soundN.authorName
        
    }
  
}

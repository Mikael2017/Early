// SoundTableViewCell.swift
//  Early
//  Created by annotations on 1/27/19.
//  Copyright © 2019 Mikael Arage. All rights reserved.


import UIKit
import AVFoundation

class SoundTableViewCell: UITableViewCell {
     var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var soundName: UILabel!
    @IBOutlet weak var soundImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath :Bundle.main.path(forResource: "Ttera", ofType: "wav")!))
        }
        catch {
            print(error)
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  
    
    @IBAction func playSound(_ sender: UIButton) {
        audioPlayer.play()
    }
    
    
    @IBAction func Pause(_ sender: UIButton) {
        
    }
    
    @IBAction func Restart(_ sender: UIButton) {
    }
    
}

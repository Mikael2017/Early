//  sound.swift
//  Early
//  Created by annotations on 1/22/19.
//  Copyright © 2019 Mikael Arage. All rights reserved.

import UIKit
import Foundation

class sound {

    var image : UIImage
    var title : String
    var soundFileName : String
    var thumbnailFilename : String
    
    init(image : UIImage, title : String, soundFileName : String , thumbnailFilename : String)
    {
        self.image = image
        self.title = title
        self.soundFileName = soundFileName
        self.thumbnailFilename = thumbnailFilename
    }
    
    
}

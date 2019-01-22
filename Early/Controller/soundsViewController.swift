//  Created by annotations on 12/20/18.
//  Copyright © Mikael. All rights reserved.
import UIKit
import Foundation

class soundsViewController: UIViewController
{
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    func setSound(sound : sound)
    {
        image.image = sound.image
        label.text = sound.title
    }
}

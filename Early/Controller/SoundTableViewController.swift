//
//  SoundTableViewController.swift
//  Early
//
//  Created by annotations on 1/27/19.
//  Copyright © 2019 Prom. All rights reserved.
//

import UIKit

class SoundTableViewController: UITableViewController {
    
    var sounds : [sound] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sounds = createSounds()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    func createSounds() -> [sound] {
        let sound1 = sound(image : UIImage(named: "ocien.png")!, title : "ocien")
        let sound2 = sound(image : UIImage(named: "Ttera.png")!, title : "Ttera")
        let sound3 = sound(image : UIImage(named: "Rain.png")!, title : "Rain")
        let sound4 = sound(image : UIImage(named: "RainOnTent")!, title : "RainonTent")
        return [sound1, sound2, sound3, sound4]
    }
}

extension SoundTableViewController
{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return sounds.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let sound = sounds[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "SoundTableViewCell") as! SoundTableViewCell
        cell.soundName.text = sound.title
        cell.soundImage.image = sound.image
        return cell
        
    }
    
    
}



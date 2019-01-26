//  SoundData.swift
//  Early
//  Created by annotations on 1/22/19.
//  Copyright © 2019 Mikael Arage. All rights reserved.
//has bugs


import UIKit
import Foundation

class SoundData: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var sounds : [sound] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sounds = creatarray()
        
        
}
    
    func creatarray() -> [sound]
    {
        
        let sound1 = sound(image : #imageLiteral(resourceName: "beginner-first-app") , title : "ocien1")
        let sound2 = sound(image : #imageLiteral(resourceName: "beginner-first-app") , title : "TRelief1")
        let sound3 = sound(image : #imageLiteral(resourceName: "beginner-first-app") , title : "Rain1")
        let sound4 = sound(image : #imageLiteral(resourceName: "beginner-first-app") , title : "Rain on tent1")
        
        
         return [sound1, sound2, sound3, sound4]
        
    }
   
}

extension SoundData : UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return sounds.count
    }
 
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
   {
        let sound = sounds[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "SoundCell") as! SoundCell
        cell.setSound(sound : sound) 
        return cell
    
    
    }
}


 
 
